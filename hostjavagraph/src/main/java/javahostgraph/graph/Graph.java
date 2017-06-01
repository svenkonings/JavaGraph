package javahostgraph.graph;

import javahostgraph.typegraph.TypeGraph;
import javahostgraph.typegraph.TypeNode;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

@SuppressWarnings("unchecked")
public class Graph {

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
}
