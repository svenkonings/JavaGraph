package javagraph.graph;

import com.google.common.collect.Sets;
import groove.algebra.AlgebraFamily;
import groove.grammar.host.HostEdge;
import groove.grammar.host.HostFactory;
import groove.grammar.host.HostGraph;
import groove.grammar.host.HostNode;
import groove.graph.GraphInfo;
import groove.graph.GraphRole;
import groove.graph.Label;
import groove.util.parse.FormatErrorSet;
import javagraph.typegraph.TypeGraph;
import javagraph.typegraph.TypeNode;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

@SuppressWarnings("unchecked")
public class Graph implements HostGraph {

    private static Graph graph = null;

    public static Graph getInstance() {
        if (graph == null) {
            graph = new Graph();
        }
        return graph;
    }

    private final TypeGraph typeGraph;

    public Graph() {
        typeGraph = TypeGraph.getInstance();
    }

    public <T> Node<T> createNode(Class<T> nodeClass) {
        TypeNode typeNode = typeGraph.getNode(nodeClass);
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
        TypeNode typeNode = typeGraph.getNode(nodeClass);
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
        for (TypeNode typeNode : typeGraph.getNodes()) {
            Set<?> visitNodes;
            try {
                Class<?> nodeClass = Class.forName(typeNode.getName());
                Method visitNode = nodeClass.getMethod(typeNode.getNodeVisit());
                visitNodes = (Set<?>) visitNode.invoke(null);
            } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
                throw new GraphException(e);
            }
            visitNodes.stream().map(Node::new).forEach(nodes::add);
        }
        return nodes;
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
        Set<javagraph.graph.Edge<?, ?>> edgeSet = new HashSet<>();
        for (Node node : visitNodes()) {
            edgeSet.addAll(node.visitEdges());
        }
        return edgeSet;
    }

    @Override
    public Set<? extends HostEdge> edgeSet(groove.graph.Node node) {
        return Sets.union(inEdgeSet(node), outEdgeSet(node));
    }

    @Override
    public Set<? extends HostEdge> inEdgeSet(groove.graph.Node node) {
        return edgeSet().stream().filter(edge -> edge.target().equals(node)).collect(Collectors.toSet());
    }

    @Override
    public Set<? extends HostEdge> outEdgeSet(groove.graph.Node node) {
        return ((Node<?>) node).visitEdges();
    }

    @Override
    public Set<? extends HostEdge> edgeSet(Label label) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isFixed() {
        return false;
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
        return false;
    }

    @Override
    public GraphInfo getInfo() {
        return new GraphInfo();
    }

    @Override
    public HostGraph newGraph(String name) {
        return this;
    }

    @Override
    public void setName(String name) {
    }

    @Override
    public HostNode addNode() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addNode(HostNode node) {
        return createNode(((Node<?>) node).getObjectClass()) != null;
    }

    @Override
    public boolean addEdge(HostEdge edge) {
        return ((Edge<?, ?>) edge).getSource().createEdge(((Edge<?, ?>) edge).getTarget()) != null;
    }

    @Override
    public boolean removeEdge(HostEdge edge) {
        return ((Edge<?, ?>) edge).deleteEdge();
    }

    @Override
    public boolean removeNode(HostNode node) {
        return ((Node<?>) node).deleteNode();
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
        return new GraphFactory(this);
    }

    @Override
    public String getName() {
        return "";
    }

    @Override
    public GraphRole getRole() {
        return GraphRole.HOST;
    }

    @Override
    public FormatErrorSet checkTypeConstraints() {
        return new FormatErrorSet();
    }
}
