package javagraph.graph;

import groove.algebra.AlgebraFamily;
import groove.grammar.host.HostEdge;
import groove.grammar.host.HostFactory;
import groove.grammar.host.HostGraph;
import groove.grammar.host.HostNode;
import groove.grammar.type.TypeGraph;
import groove.grammar.type.TypeNode;
import groove.graph.GraphInfo;
import groove.graph.GraphRole;
import groove.graph.Label;
import groove.util.parse.FormatErrorSet;
import javagraph.TypeGraphLoader;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

@SuppressWarnings({"unchecked", "SuspiciousMethodCalls", "MethodDoesntCallSuperMethod"})
public class Graph implements HostGraph {

    private static Graph graph = null;

    public static Graph getInstance() {
        if (graph == null) {
            graph = new Graph();
        }
        return graph;
    }

    private final TypeGraph typeGraph;
    private final GraphFactory graphFactory;
    private String name;
    private GraphInfo graphInfo;

    public Graph() {
        this("javagraph");
    }

    public Graph(String graphName) {
        typeGraph = TypeGraphLoader.getInstance();
        graphFactory = new GraphFactory(this);
        name = graphName;
    }

    public <T> Node<T> createNode(Class<T> nodeClass) {
        TypeNode typeNode = typeGraph.getNodeByClass(nodeClass);
        T node;
        try {
            Method createNode = nodeClass.getMethod(typeNode.getNodeCreate());
            node = (T) createNode.invoke(null);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new GraphException(e);
        }
        return new Node<>(node);
    }

    public <T> Set<Node<T>> visitNode(Class<T> nodeClass) {
        TypeNode typeNode = typeGraph.getNodeByClass(nodeClass);
        Set<T> nodes;
        try {
            Method visitNode = nodeClass.getMethod(typeNode.getNodeVisit());
            nodes = (Set<T>) visitNode.invoke(null);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new GraphException(e);
        }
        return nodes.stream().map(Node::new).collect(Collectors.toSet());
    }

    public Set<Node<?>> visitNodes() {
        Set<Node<?>> nodes = new HashSet<>();
        for (TypeNode typeNode : typeGraph.nodeSet()) {
            if (!typeNode.isJavaNode()) {
                continue;
            }
            Set<?> visitNodes;
            try {
                Class<?> nodeClass = Class.forName(typeNode.text());
                Method visitNode = nodeClass.getMethod(typeNode.getNodeVisit());
                visitNodes = (Set<?>) visitNode.invoke(null);
            } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
                throw new GraphException(e);
            }
            visitNodes.stream().map(Node::new).forEach(nodes::add);
        }
        return nodes;
    }

    public <S, T> Set<Edge<S, T>> visitEdge(Class<S> sourceClass, Class<T> targetClass) {
        return visitNode(sourceClass).stream().flatMap(node -> node.visitEdge(targetClass).stream()).collect(Collectors.toSet());
    }

    public <S> Set<Edge<S, ?>> visitEdges(Class<S> nodeClass) {
        return visitNode(nodeClass).stream().flatMap(node -> node.visitEdges().stream()).collect(Collectors.toSet());
    }

    public Set<Edge<?, ?>> visitEdges() {
        return visitNodes().stream().flatMap(node -> node.visitEdges().stream()).collect(Collectors.toSet());
    }

    @Override
    public String toString() {
        return visitNodes().toString();
    }

    @Override
    public Set<? extends HostNode> nodeSet() {
        return visitNodes();
    }

    @Override
    public Set<? extends HostEdge> edgeSet() {
        return visitEdges();
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
        // TODO: inefficient
        return edgeSet().stream().filter(edge -> edge.target().equals(node)).collect(Collectors.toSet());
    }

    @Override
    public Set<? extends HostEdge> outEdgeSet(groove.graph.Node node) {
        if (node instanceof Node<?>) {
            return ((Node<?>) node).visitEdges();
        } else {
            // TODO: inefficient
            return edgeSet().stream().filter(edge -> edge.source().equals(node)).collect(Collectors.toSet());
        }
    }

    @Override
    public Set<? extends HostEdge> edgeSet(Label label) {
        // TODO: inefficient
        return edgeSet().stream().filter(edge -> edge.label().equals(label)).collect(Collectors.toSet());
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
        return new Graph(name);
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
    public boolean addEdge(HostEdge edge) {
        return false;
    }

    @Override
    public boolean removeEdge(HostEdge edge) {
        if (edge instanceof Edge<?, ?>) {
            return ((Edge<?, ?>) edge).deleteEdge();
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public boolean removeNode(HostNode node) {
        if (node instanceof Node<?>) {
            return ((Node<?>) node).deleteNode();
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
