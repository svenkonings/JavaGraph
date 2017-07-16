package javagraph.graph;

import groove.algebra.AlgebraFamily;
import groove.grammar.host.HostEdge;
import groove.grammar.host.HostFactory;
import groove.grammar.host.HostGraph;
import groove.grammar.host.HostNode;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeGraph;
import groove.grammar.type.TypeNode;
import groove.graph.AGraph;
import groove.graph.GraphInfo;
import groove.graph.GraphRole;
import groove.graph.Label;
import groove.util.parse.FormatErrorSet;
import javagraph.TypeGraphLoader;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * {@link HostGraph} implementation for java graphs
 */
@SuppressWarnings({"SuspiciousMethodCalls", "MethodDoesntCallSuperMethod"})
public class JavaGraph implements HostGraph {

    private static JavaGraph graph = null;

    public static JavaGraph getInstance() {
        if (graph == null) {
            graph = new JavaGraph();
        }
        return graph;
    }

    private final TypeGraph typeGraph;
    private final JavaGraphFactory graphFactory;
    private String name;
    private GraphInfo graphInfo;

    public JavaGraph() {
        this("javagraph");
    }

    public JavaGraph(String graphName) {
        this(graphName, TypeGraphLoader.getInstance());
    }

    public JavaGraph(TypeGraph type) {
        this("javagraph", type);
    }

    public JavaGraph(String graphName, TypeGraph type) {
        name = graphName;
        typeGraph = type;
        graphFactory = new JavaGraphFactory(this);
    }

    @Override
    public TypeGraph getTypeGraph() {
        return typeGraph;
    }

    public JavaNode createNode(TypeNode typeNode) {
        Object object;
        try {
            Method createNode = typeNode.getNodeClass().getMethod(typeNode.getNodeCreate());
            object = createNode.invoke(null);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new JavaGraphException(e);
        }
        return new JavaNode(typeNode, object);
    }

    public Set<JavaNode> visitNode(TypeNode typeNode) {
        Set<?> objects;
        try {
            Method visitNode = typeNode.getNodeClass().getMethod(typeNode.getNodeVisit());
            objects = (Set<?>) visitNode.invoke(null);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new JavaGraphException(e);
        }
        return objects.stream()
                .map(object -> new JavaNode(typeNode, object))
                .collect(Collectors.toSet());
    }

    public Set<JavaNode> visitNodes() {
        Set<JavaNode> nodes = new HashSet<>();
        for (TypeNode typeNode : typeGraph.nodeSet()) {
            if (!typeNode.isJavaNode()) {
                continue;
            }
            Set<?> objects;
            try {
                Method visitNode = typeNode.getNodeClass().getMethod(typeNode.getNodeVisit());
                objects = (Set<?>) visitNode.invoke(null);
            } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
                throw new JavaGraphException(e);
            }
            objects.stream()
                    .map(object -> new JavaNode(typeNode, object))
                    .forEach(nodes::add);
        }
        return nodes;
    }

    public Stream<JavaEdge> visitEdge(TypeEdge edge) {
        return visitNode(edge.source()).stream().flatMap(node -> node.visitEdge(edge.label(), edge.target()).stream());
    }

    public Stream<JavaEdge> visitEdges(Collection<? extends TypeEdge> edges) {
        return edges.stream().flatMap(this::visitEdge);
    }

    public Stream<JavaEdge> visitEdges(TypeNode typeNode) {
        return visitNode(typeNode).stream().flatMap(node -> node.visitEdges().stream());
    }

    public Stream<JavaEdge> visitEdges() {
        return visitNodes().stream().flatMap(node -> node.visitEdges().stream());
    }

    @Override
    public String toString() {
        return AGraph.toString(this);
    }

    @Override
    public Set<? extends HostNode> nodeSet() {
        return visitNodes();
    }

    @Override
    public Set<? extends HostEdge> edgeSet() {
        return visitEdges().collect(Collectors.toSet());
    }

    @Override
    public Set<? extends HostEdge> edgeSet(groove.graph.Node node) {
        Set<HostEdge> edgeSet = new HashSet<>();
        edgeSet.addAll(inEdgeSet(node));
        edgeSet.addAll(outEdgeSet(node));
        return edgeSet;
    }

    @Override
    public Set<? extends HostEdge> inEdgeSet(groove.graph.Node node) {
        if (node instanceof JavaNode) {
            return visitEdges(typeGraph.inEdgeSet(((JavaNode) node).getType()))
                    .filter(edge -> edge.getTarget().equals(node))
                    .collect(Collectors.toSet());
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public Set<? extends HostEdge> outEdgeSet(groove.graph.Node node) {
        if (node instanceof JavaNode) {
            return ((JavaNode) node).visitEdges();
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public Set<? extends HostEdge> edgeSet(Label label) {
        return visitEdges(typeGraph.edgeSet(label)).collect(Collectors.toSet());
    }

    @Override
    public boolean isFixed() {
        return true;
    }

    @Override
    public boolean containsNode(groove.graph.Node node) {
        return nodeSet().contains(node);
    }

    @Override
    public boolean containsEdge(groove.graph.Edge edge) {
        return edgeSet().contains(edge);
    }

    @Override
    public boolean setFixed() {
        return true;
    }

    @Override
    public boolean hasInfo() {
        return graphInfo != null;
    }

    @Override
    public GraphInfo getInfo() {
        if (graphInfo == null) {
            graphInfo = new GraphInfo();
        }
        return graphInfo;
    }

    @Override
    public HostGraph newGraph(String name) {
        return new JavaGraph(name);
    }

    @Override
    public void setName(String newName) {
        name = newName;
    }

    @Override
    public HostNode addNode() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addNode(HostNode node) {
        return false;
    }

    @Override
    public boolean addEdge(HostEdge hostEdge) {
        if (hostEdge instanceof JavaEdge) {
            JavaEdge edge = (JavaEdge) hostEdge;
            return edge.getSource().createEdge(edge.label(), edge.getTarget()) != null;
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public boolean removeEdge(HostEdge edge) {
        if (edge instanceof JavaEdge) {
            return ((JavaEdge) edge).deleteEdge();
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public boolean removeNode(HostNode node) {
        if (node instanceof JavaNode) {
            return ((JavaNode) node).deleteNode();
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public HostGraph clone() {
        return this;
    }

    @Override
    public HostGraph clone(AlgebraFamily family) {
        return this;
    }

    @Override
    public HostFactory getFactory() {
        return graphFactory;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public GraphRole getRole() {
        return GraphRole.HOST;
    }

    @Override
    public FormatErrorSet checkTypeConstraints() {
        return getTypeGraph().check(this);
    }
}
