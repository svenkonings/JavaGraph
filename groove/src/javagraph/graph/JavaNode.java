package javagraph.graph;

import groove.grammar.AnchorKind;
import groove.grammar.host.HostNode;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeGraph;
import groove.grammar.type.TypeLabel;
import groove.grammar.type.TypeNode;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * {@link HostNode} implementation for Java graphs.
 */
public class JavaNode implements HostNode {

    private final TypeNode typeNode;
    private final TypeGraph typeGraph;
    private final Object object;
    private final Class<?> objectClass;

    /**
     * Creates a new node with the given {@link TypeNode} and a Java object instance of the class the {@link TypeNode} is
     * associated with.
     *
     * @param type       the given {@link TypeNode}
     * @param nodeObject the Java object instance
     * @throws JavaGraphException if the {@link TypeNode} is not a Java type node or the object instance is not an
     *                            instance of the class associated with the {@link TypeNode}
     */
    public JavaNode(TypeNode type, Object nodeObject) throws JavaGraphException {
        if (!type.isJavaNode()) {
            throw new JavaGraphException("Type node %s is not a Java type node", type);
        } else if (!type.getNodeClass().equals(nodeObject.getClass())) {
            throw new JavaGraphException("Object %s is not an instance of %s", nodeObject.getClass(), type.getNodeClass());
        }
        typeNode = type;
        typeGraph = typeNode.getGraph();
        object = nodeObject;
        objectClass = typeNode.getNodeClass();
    }

    /**
     * @return the Java object instance of this node
     */
    public Object getObject() {
        return object;
    }

    /**
     * @return the Java class associated with this node
     */
    public Class<?> getObjectClass() {
        return objectClass;
    }

    @Override
    public TypeNode getType() {
        return typeNode;
    }

    /**
     * Delete this node instance by calling the node delete method of the object instance of this node.
     *
     * @return whether the deletion was succesful
     * @throws JavaGraphException if the method couldn't be called
     */
    public boolean deleteNode() throws JavaGraphException {
        boolean deleted;
        try {
            Method deleteNode = objectClass.getMethod(typeNode.getNodeDelete());
            deleted = (boolean) deleteNode.invoke(object);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new JavaGraphException(e);
        }
        return deleted;
    }

    /**
     * Creates a new edge instance with the given {@link TypeLabel} between this node and the given target node. This is
     * done by finding the type edge associated with the source type, label and target type and then calling the
     * associated edge create method of the object instance of this node with the given target instance as parameter.
     *
     * @param label      the given {@link TypeLabel}
     * @param targetNode the given target node
     * @return the created edge, or {@code null} if the creation was unsuccesful
     * @throws JavaGraphException if the {@link TypeEdge} couldn't be found, the {@link TypeEdge} was not a Java type
     *                            edge or the method couldn't be called
     */
    public JavaEdge createEdge(TypeLabel label, JavaNode targetNode) throws JavaGraphException {
        TypeEdge typeEdge = getJavaTypeEdge(typeNode, label, targetNode.getType());
        boolean created;
        try {
            Method createEdge = objectClass.getMethod(typeEdge.getEdgeCreate(), targetNode.getObjectClass());
            created = (boolean) createEdge.invoke(object, targetNode.getObject());
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new JavaGraphException(e);
        }
        if (created) {
            return new JavaEdge(this, typeEdge, targetNode);
        } else {
            return null;
        }
    }

    /**
     * Deletes the edge instance with the given {@link TypeLabel} between this node and the given target node. This is
     * done by finding the type edge associated with the source type, label and target type and then calling the
     * associated edge delete method of the object instance of this node with the given target instance as parameter.
     *
     * @param label      the given {@link TypeLabel}
     * @param targetNode the given target node
     * @return whether the deletion was succesful
     * @throws JavaGraphException if the {@link TypeEdge} couldn't be found, the {@link TypeEdge} was not a Java type
     *                            edge or the method couldn't be called
     */
    public boolean deleteEdge(TypeLabel label, JavaNode targetNode) throws JavaGraphException {
        TypeEdge typeEdge = getJavaTypeEdge(typeNode, label, targetNode.getType());
        boolean deleted;
        try {
            Method deleteEdge = objectClass.getMethod(typeEdge.getEdgeDelete(), targetNode.getObjectClass());
            deleted = (boolean) deleteEdge.invoke(object, targetNode.getObject());
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new JavaGraphException(e);
        }
        return deleted;
    }

    /**
     * Visits the edge instaces with the given {@link TypeLabel} between this node and the given target type node. This
     * is done by finding the type edge associated with the source type, label and target type and then calling the
     * associated edge visit method of the object instance of this node.
     *
     * @param label          the given {@link TypeLabel}
     * @param targetTypeNode the given target {@link TypeNode}
     * @return the set of edge instances
     * @throws JavaGraphException if the {@link TypeEdge} couldn't be found, the {@link TypeEdge} was not a Java type
     *                            edge or the method couldn't be called
     */
    public Set<JavaEdge> visitEdge(TypeLabel label, TypeNode targetTypeNode) throws JavaGraphException {
        TypeEdge typeEdge = getJavaTypeEdge(typeNode, label, targetTypeNode);
        Set<?> targets;
        try {
            Method visitEdge = objectClass.getMethod(typeEdge.getEdgeVisit());
            targets = (Set<?>) visitEdge.invoke(object);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new JavaGraphException(e);
        }
        return targets.stream()
                .map(target -> new JavaNode(targetTypeNode, target))
                .map(target -> new JavaEdge(this, typeEdge, target))
                .collect(Collectors.toSet());
    }

    /**
     * Visits all outging edge instaces of this node. This is calling the edge visit method of the object instance of
     * this node associated to each {@link TypeEdge} in the outgoing type edge set.
     *
     * @return the set of edge instances
     * @throws JavaGraphException if the method couldn't be called
     */
    public Set<JavaEdge> visitEdges() throws JavaGraphException {
        Set<JavaEdge> edges = new HashSet<>();
        for (TypeEdge typeEdge : typeGraph.outEdgeSet(typeNode)) {
            if (!typeEdge.isJavaEdge()) {
                continue;
            }
            Set<?> targets;
            try {
                Method visitEdge = objectClass.getMethod(typeEdge.getEdgeVisit());
                targets = (Set<?>) visitEdge.invoke(object);
            } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
                throw new JavaGraphException(e);
            }
            targets.stream()
                    .map(target -> new JavaNode(typeEdge.target(), target))
                    .map(target -> new JavaEdge(this, typeEdge, target))
                    .forEach(edges::add);
        }
        return edges;
    }

    /**
     * Get the {@link TypeEdge} associated with the given source type, label and target type.
     *
     * @param sourceType the given source type
     * @param label      the given label
     * @param targetType the given target type
     * @return the {@link TypeEdge}
     * @throws JavaGraphException if the {@link TypeEdge} couldn't be found, the {@link TypeEdge} was not a Java type
     *                            edge
     */
    private TypeEdge getJavaTypeEdge(TypeNode sourceType, TypeLabel label, TypeNode targetType) throws JavaGraphException {
        TypeEdge typeEdge = typeGraph.getTypeEdge(sourceType, label, targetType, true);
        if (typeEdge == null) {
            throw new JavaGraphException("No valid type edge found");
        } else if (!typeEdge.isJavaEdge()) {
            throw new JavaGraphException("The type edge is not a Java type edge");
        }
        return typeEdge;
    }

    @Override
    public int hashCode() {
        int result = typeNode.hashCode();
        result = 31 * result + object.hashCode();
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        } else if (obj instanceof JavaNode) {
            JavaNode node = (JavaNode) obj;
            return getType().equals(node.getType()) &&
                    getObject().equals(node.getObject());
        } else {
            return false;
        }
    }

    @Override
    public String toString() {
        return object.toString();
    }

    @Override
    public AnchorKind getAnchorKind() {
        return AnchorKind.NODE;
    }

    @Override
    public int getNumber() {
        return hashCode();
    }
}
