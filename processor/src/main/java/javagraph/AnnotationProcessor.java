package javagraph;

import com.google.auto.common.MoreElements;
import com.google.auto.common.MoreTypes;
import groove.util.parse.StringHandler;
import javagraph.annotations.EdgeCreate;
import javagraph.annotations.EdgeDelete;
import javagraph.annotations.EdgeVisit;
import javagraph.annotations.Node;
import javagraph.classgraph.ClassEdge;
import javagraph.classgraph.ClassGraph;
import javagraph.classgraph.ClassNode;

import javax.annotation.processing.AbstractProcessor;
import javax.annotation.processing.Messager;
import javax.annotation.processing.ProcessingEnvironment;
import javax.annotation.processing.RoundEnvironment;
import javax.lang.model.SourceVersion;
import javax.lang.model.element.*;
import javax.lang.model.type.DeclaredType;
import javax.lang.model.type.ExecutableType;
import javax.lang.model.type.TypeMirror;
import javax.lang.model.util.Types;
import javax.tools.Diagnostic;
import javax.tools.FileObject;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static javagraph.TypeGraphLoader.*;
import static javax.tools.StandardLocation.CLASS_OUTPUT;

public class AnnotationProcessor extends AbstractProcessor {

    public static final String NODE = PACKAGE + "Node";

    public static final String NODE_VISIT = PACKAGE + "NodeVisit";
    public static final String NODE_CREATE = PACKAGE + "NodeCreate";
    public static final String NODE_DELETE = PACKAGE + "NodeDelete";

    public static final String EDGE_VISIT = PACKAGE + "EdgeVisit";
    public static final String EDGE_CREATE = PACKAGE + "EdgeCreate";
    public static final String EDGE_DELETE = PACKAGE + "EdgeDelete";

    private ClassGraph graph;
    private Types types;
    private Messager messager;
    private FileObject graphFile;

    @Override
    public Set<String> getSupportedAnnotationTypes() {
        Set<String> annotationTypes = new HashSet<>();
        annotationTypes.add(NODE);
        annotationTypes.add(NODE_VISIT);
        annotationTypes.add(NODE_CREATE);
        annotationTypes.add(NODE_DELETE);
        annotationTypes.add(EDGE_VISIT);
        annotationTypes.add(EDGE_CREATE);
        annotationTypes.add(EDGE_DELETE);
        return Collections.unmodifiableSet(annotationTypes);
    }

    @Override
    public SourceVersion getSupportedSourceVersion() {
        return SourceVersion.latestSupported();
    }

    @Override
    public synchronized void init(ProcessingEnvironment processingEnv) {
        super.init(processingEnv);
        graph = new ClassGraph();
        types = processingEnv.getTypeUtils();
        messager = processingEnv.getMessager();
        try {
            graphFile = processingEnv.getFiler().createResource(CLASS_OUTPUT, FOLDER, TYPEGRAPH_FILE);
        } catch (IOException e) {
            error("TypeGraph could not be created: %s", e.getMessage());
        }
        graphFile.delete();
    }

    @Override
    public boolean process(Set<? extends TypeElement> annotations, RoundEnvironment roundEnv) {
        if (roundEnv.processingOver()) {
            writeGraph(graph);
            return false;
        }
        Set<Element> unhandledElements = new HashSet<>();
        for (TypeElement annotation : annotations) {
            if (!NODE.equals(annotation.getQualifiedName().toString())) {
                Set<? extends Element> elements = roundEnv.getElementsAnnotatedWith(annotation);
                unhandledElements.addAll(elements);
            }
        }
        for (TypeElement annotation : annotations) {
            if (NODE.equals(annotation.getQualifiedName().toString())) {
                Set<? extends Element> elements = roundEnv.getElementsAnnotatedWith(annotation);
                processNode(elements, unhandledElements);
            }
        }
        for (Element element : unhandledElements) {
            error(element, "Annotated elements can only be used in a node class");
        }
        return true;
    }

    private void writeGraph(ClassGraph graph) {
        if (graphFile == null) {
            return;
        }
        ObjectOutputStream outputStream = null;
        try {
            outputStream = new ObjectOutputStream(graphFile.openOutputStream());
            outputStream.writeObject(graph);
        } catch (IOException e) {
            error("TypeGraph could not be written: %s", e.getMessage());
        } finally {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                    warn("Couldn't close output stream: %s", e.getMessage());
                }
            }
        }
    }

    private void processNode(Set<? extends Element> elements, Set<Element> unhandledElements) {
        for (Element element : elements) {
            boolean valid = true;
            TypeElement typeElement;
            try {
                typeElement = MoreElements.asType(element);
            } catch (IllegalArgumentException e) {
                error(NODE, element, "@Node should only be used for types");
                continue;
            }
            Node nodeAnntation = element.getAnnotation(Node.class);
            if (nodeAnntation == null) {
                error(NODE, element, "Can't find @Node annotation");
                return;
            }
            String name = nodeAnntation.value();
            if (!StringHandler.isIdentifier(name)) {
                error(NODE, element, "Node name is not a valid identifier");
                valid = false;
            }
            ClassNode node = new ClassNode(name, typeElement.getQualifiedName().toString());
            for (Element enclosedElement : typeElement.getEnclosedElements()) {
                for (AnnotationMirror annotationMirror : enclosedElement.getAnnotationMirrors()) {
                    boolean remove = true;
                    switch (annotationMirror.getAnnotationType().toString()) {
                        case NODE_VISIT:
                            processNodeVisit(annotationMirror, typeElement.asType(), node, enclosedElement);
                            break;
                        case NODE_CREATE:
                            processNodeCreate(annotationMirror, typeElement.asType(), node, enclosedElement);
                            break;
                        case NODE_DELETE:
                            processNodeDelete(annotationMirror, node, enclosedElement);
                            break;
                        case EDGE_VISIT:
                            processEdgeVisit(annotationMirror, node, enclosedElement);
                            break;
                        case EDGE_CREATE:
                            processEdgeCreate(annotationMirror, node, enclosedElement);
                            break;
                        case EDGE_DELETE:
                            processEdgeDelete(annotationMirror, node, enclosedElement);
                            break;
                        default:
                            remove = false;
                            break;
                    }
                    if (remove) {
                        unhandledElements.remove(enclosedElement);
                    }
                }
            }
            if (!node.hasNodeVisit()) {
                error(NODE, typeElement, "Missing NodeVisit method");
                valid = false;
            }
            if (!node.hasNodeCreate()) {
                error(NODE, typeElement, "Missing NodeCreate method");
                valid = false;
            }
            if (!node.hasNodeDelete()) {
                error(NODE, typeElement, "Missing NodeDelete method");
                valid = false;
            }
            for (ClassEdge edge : node.getEdges()) {
                if (!edge.hasEdgeVisit()) {
                    error(NODE, typeElement, "Missing EdgeVisit method for %s", edge.getTarget());
                    valid = false;
                }
                if (!edge.hasEdgeCreate()) {
                    error(NODE, typeElement, "Missing EdgeCreate method for %s", edge.getTarget());
                    valid = false;
                }
                if (!edge.hasEdgeDelete()) {
                    error(NODE, typeElement, "Missing EdgeDelete method for %s", edge.getTarget());
                    valid = false;
                }
            }
            if (valid) {
                graph.addNode(node);
            }
        }
    }

    private void processNodeVisit(AnnotationMirror annotation, TypeMirror enclosingType, ClassNode node, Element element) {
        boolean valid = true;
        ExecutableElement executableElement;
        ExecutableType executableType;
        try {
            executableElement = MoreElements.asExecutable(element);
            executableType = MoreTypes.asExecutable(element.asType());
        } catch (IllegalArgumentException e) {
            error(annotation, element, "@NodeVisit should only be used for methods");
            return;
        }
        if (!executableElement.getModifiers().contains(Modifier.PUBLIC)) {
            error(annotation, element, "Methods annotated with @NodeVisit should be public");
            valid = false;
        }
        if (!executableElement.getModifiers().contains(Modifier.STATIC)) {
            error(annotation, element, "Methods annotated with @NodeVisit should be static");
            valid = false;
        }
        if (!MoreTypes.isTypeOf(Set.class, executableType.getReturnType())) {
            error(annotation, element, "Methods annotated with @NodeVisit should return a Set of nodes");
            valid = false;
        }
        if (!executableType.getParameterTypes().isEmpty()) {
            error(annotation, element, "Methods annotated with @NodeVisit should have no parameters");
            valid = false;
        }
        DeclaredType declaredType;
        try {
            declaredType = MoreTypes.asDeclared(executableType.getReturnType());
        } catch (IllegalArgumentException e) {
            error(annotation, element, "Methods annotated with @NodeVisit should return a Set of nodes");
            return;
        }
        List<? extends TypeMirror> typeArguments = declaredType.getTypeArguments();
        if (typeArguments.size() != 1 || !types.isSameType(enclosingType, typeArguments.get(0))) {
            error(annotation, element, "Methods annotated with @NodeVisit should return a Set of nodes");
            valid = false;
        }
        if (valid) {
            try {
                node.setNodeVisit(executableElement.getSimpleName().toString());
            } catch (IllegalStateException e) {
                error(annotation, element, "There can only be one @NodeVisit for every node");
            }
        }
    }

    private void processNodeCreate(AnnotationMirror annotation, TypeMirror enclosingType, ClassNode node, Element element) {
        boolean valid = true;
        ExecutableElement executableElement;
        ExecutableType executableType;
        try {
            executableElement = MoreElements.asExecutable(element);
            executableType = MoreTypes.asExecutable(element.asType());
        } catch (IllegalArgumentException e) {
            error(annotation, element, "@NodeCreate should only be used for methods");
            return;
        }
        if (!executableElement.getModifiers().contains(Modifier.PUBLIC)) {
            error(annotation, element, "Methods annotated with @NodeCreate should be public");
            valid = false;
        }
        if (!executableElement.getModifiers().contains(Modifier.STATIC)) {
            error(annotation, element, "Methods annotated with @NodeCreate should be static");
            valid = false;
        }
        if (!types.isSameType(enclosingType, executableType.getReturnType())) {
            error(annotation, element, "Methods annotated with @NodeCreate should return the node class");
            valid = false;
        }
        if (!executableType.getParameterTypes().isEmpty()) {
            error(annotation, element, "Methods annotated with @NodeCreate should have no parameters");
            valid = false;
        }
        if (valid) {
            try {
                node.setNodeCreate(executableElement.getSimpleName().toString());
            } catch (IllegalStateException e) {
                error(annotation, element, "There can only be one @NodeCreate for every node");
            }
        }
    }

    private void processNodeDelete(AnnotationMirror annotation, ClassNode node, Element element) {
        boolean valid = true;
        ExecutableElement executableElement;
        ExecutableType executableType;
        try {
            executableElement = MoreElements.asExecutable(element);
            executableType = MoreTypes.asExecutable(element.asType());
        } catch (IllegalArgumentException e) {
            error(annotation, element, "@NodeDelete should only be used for methods");
            return;
        }
        if (!executableElement.getModifiers().contains(Modifier.PUBLIC)) {
            error(annotation, element, "Methods annotated with @NodeDelete should be public");
            valid = false;
        }
        if (executableElement.getModifiers().contains(Modifier.STATIC)) {
            error(annotation, element, "Methods annotated with @NodeDelete shouldn't be static");
            valid = false;
        }
        if (!MoreTypes.isTypeOf(boolean.class, executableType.getReturnType())) {
            error(annotation, element, "Methods annotated with @NodeDelete should return a boolean");
            valid = false;
        }
        if (!executableType.getParameterTypes().isEmpty()) {
            error(annotation, element, "Methods annotated with @NodeDelete should have no parameters");
            valid = false;
        }
        if (valid) {
            try {
                node.setNodeDelete(executableElement.getSimpleName().toString());
            } catch (IllegalStateException e) {
                error(annotation, element, "There can only be one @NodeDelete for every node");
            }
        }
    }

    private void processEdgeVisit(AnnotationMirror annotation, ClassNode node, Element element) {
        boolean valid = true;
        ExecutableElement executableElement;
        ExecutableType executableType;
        try {
            executableElement = MoreElements.asExecutable(element);
            executableType = MoreTypes.asExecutable(element.asType());
        } catch (IllegalArgumentException e) {
            error(annotation, element, "@EdgeVisit should only be used for methods");
            return;
        }
        EdgeVisit edgeVisit = executableElement.getAnnotation(EdgeVisit.class);
        if (edgeVisit == null) {
            error(annotation, element, "Can't find @EdgeVisit annotation");
            return;
        }
        if (!executableElement.getModifiers().contains(Modifier.PUBLIC)) {
            error(annotation, element, "Methods annotated with @EdgeVisit should be public");
            valid = false;
        }
        if (executableElement.getModifiers().contains(Modifier.STATIC)) {
            error(annotation, element, "Methods annotated with @EdgeVisit shouldn't be static");
            valid = false;
        }
        if (!MoreTypes.isTypeOf(Set.class, executableType.getReturnType())) {
            error(annotation, element, "Methods annotated with @EdgeVisit should return a Set of target nodes");
            valid = false;
        }
        if (!executableType.getParameterTypes().isEmpty()) {
            error(annotation, element, "Methods annotated with @EdgeVisit should have no parameters");
            valid = false;
        }
        DeclaredType declaredType;
        try {
            declaredType = MoreTypes.asDeclared(executableType.getReturnType());
        } catch (IllegalArgumentException e) {
            error(annotation, element, "Methods annotated with @EdgeVisit should return a Set of target nodes");
            return;
        }
        List<? extends TypeMirror> typeArguments = declaredType.getTypeArguments();
        if (typeArguments.size() != 1) {
            error(annotation, element, "Methods annotated with @EdgeVisit should return a Set of target nodes");
            return;
        }
        TypeMirror targetType = typeArguments.get(0);
        TypeElement targetElement;
        try {
            targetElement = MoreTypes.asTypeElement(targetType);
        } catch (IllegalArgumentException e) {
            error(annotation, element, "The target should be a node");
            return;
        }
        Node targetAnntation = targetElement.getAnnotation(Node.class);
        if (targetAnntation == null) {
            error(annotation, element, "The target should be a node");
            return;
        }
        String targetName = targetAnntation.value();
        if (!StringHandler.isIdentifier(targetName)) {
            error(NODE, element, "Node name is not a valid identifier");
            valid = false;
        }
        if (valid) {
            try {
                ClassEdge edge = node.computeEdgeIfAbsent(targetName, edgeVisit.value());
                edge.setEdgeVisit(executableElement.getSimpleName().toString());
            } catch (IllegalStateException e) {
                error(annotation, element, "There can only be one @EdgeVisit for every edge");
            }
        }
    }

    private void processEdgeCreate(AnnotationMirror annotation, ClassNode node, Element element) {
        boolean valid = true;
        ExecutableElement executableElement;
        ExecutableType executableType;
        try {
            executableElement = MoreElements.asExecutable(element);
            executableType = MoreTypes.asExecutable(element.asType());
        } catch (IllegalArgumentException e) {
            error(annotation, element, "@EdgeCreate should only be used for methods");
            return;
        }
        EdgeCreate edgeCreate = executableElement.getAnnotation(EdgeCreate.class);
        if (edgeCreate == null) {
            error(annotation, element, "Can't find @EdgeCreate annotation");
            return;
        }
        if (!executableElement.getModifiers().contains(Modifier.PUBLIC)) {
            error(annotation, element, "Methods annotated with @EdgeCreate should be public");
            valid = false;
        }
        if (executableElement.getModifiers().contains(Modifier.STATIC)) {
            error(annotation, element, "Methods annotated with @EdgeCreate shouldn't be static");
            valid = false;
        }
        if (!MoreTypes.isTypeOf(boolean.class, executableType.getReturnType())) {
            error(annotation, element, "Methods annotated with @EdgeCreate should return a boolean");
            valid = false;
        }
        List<? extends TypeMirror> parametertypes = executableType.getParameterTypes();
        if (parametertypes.size() != 1) {
            error(annotation, element, "Methods annotated with @EdgeCreate should have the target node as parameter");
            return;
        }
        TypeMirror targetType = parametertypes.get(0);
        TypeElement targetElement;
        try {
            targetElement = MoreTypes.asTypeElement(targetType);
        } catch (IllegalArgumentException e) {
            error(annotation, element, "The target should be a node");
            return;
        }
        Node targetAnntation = targetElement.getAnnotation(Node.class);
        if (targetAnntation == null) {
            error(annotation, element, "The target should be a node");
            return;
        }
        String targetName = targetAnntation.value();
        if (!StringHandler.isIdentifier(targetName)) {
            error(NODE, element, "Node name is not a valid identifier");
            valid = false;
        }
        if (valid) {
            try {
                ClassEdge edge = node.computeEdgeIfAbsent(targetName, edgeCreate.value());
                edge.setEdgeCreate(executableElement.getSimpleName().toString());
            } catch (IllegalStateException e) {
                error(annotation, element, "There can only be one @EdgeCreate for every edge");
            }
        }
    }

    private void processEdgeDelete(AnnotationMirror annotation, ClassNode node, Element element) {
        boolean valid = true;
        ExecutableElement executableElement;
        ExecutableType executableType;
        try {
            executableElement = MoreElements.asExecutable(element);
            executableType = MoreTypes.asExecutable(element.asType());
        } catch (IllegalArgumentException e) {
            error(annotation, element, "@EdgeDelete should only be used for methods");
            return;
        }
        EdgeDelete edgeDelete = executableElement.getAnnotation(EdgeDelete.class);
        if (edgeDelete == null) {
            error(annotation, element, "Can't find @EdgeDelete annotation");
            return;
        }
        if (!executableElement.getModifiers().contains(Modifier.PUBLIC)) {
            error(annotation, element, "Methods annotated with @EdgeDelete should be public");
            valid = false;
        }
        if (executableElement.getModifiers().contains(Modifier.STATIC)) {
            error(annotation, element, "Methods annotated with @EdgeDelete shouldn't be static");
            valid = false;
        }
        if (!MoreTypes.isTypeOf(boolean.class, executableType.getReturnType())) {
            error(annotation, element, "Methods annotated with @EdgeDelete should return a boolean");
            valid = false;
        }
        List<? extends TypeMirror> parametertypes = executableType.getParameterTypes();
        if (parametertypes.size() != 1) {
            error(annotation, element, "Methods annotated with @EdgeDelete should have the target node as parameter");
            return;
        }
        TypeMirror targetType = parametertypes.get(0);
        TypeElement targetElement;
        try {
            targetElement = MoreTypes.asTypeElement(targetType);
        } catch (IllegalArgumentException e) {
            error(annotation, element, "The target should be a node");
            return;
        }
        Node targetAnntation = targetElement.getAnnotation(Node.class);
        if (targetAnntation == null) {
            error(annotation, element, "The target should be a node");
            return;
        }
        String targetName = targetAnntation.value();
        if (!StringHandler.isIdentifier(targetName)) {
            error(NODE, element, "Node name is not a valid identifier");
            valid = false;
        }
        if (valid) {
            try {
                ClassEdge edge = node.computeEdgeIfAbsent(targetName, edgeDelete.value());
                edge.setEdgeDelete(executableElement.getSimpleName().toString());
            } catch (IllegalStateException e) {
                error(annotation, element, "There can only be one @EdgeDelete for every edge");
            }
        }
    }

    private void warn(String message, Object... args) {
        messager.printMessage(Diagnostic.Kind.WARNING, String.format(message, args));
    }

    private void error(String message, Object... args) {
        messager.printMessage(Diagnostic.Kind.ERROR, String.format(message, args));
    }

    private void error(Element element, String message, Object... args) {
        messager.printMessage(Diagnostic.Kind.ERROR, String.format(message, args), element);
    }

    private void error(AnnotationMirror annotationMirror, Element element, String message, Object... args) {
        messager.printMessage(Diagnostic.Kind.ERROR, String.format(message, args), element, annotationMirror);
    }

    private void error(String annotationName, Element element, String message, Object... args) {
        for (AnnotationMirror annotationMirror : element.getAnnotationMirrors()) {
            if (annotationName.equals(annotationMirror.getAnnotationType().toString())) {
                messager.printMessage(Diagnostic.Kind.ERROR, String.format(message, args), element, annotationMirror);
            }
        }
    }
}
