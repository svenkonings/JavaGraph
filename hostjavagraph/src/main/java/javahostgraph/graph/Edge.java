package javahostgraph.graph;

import javahostgraph.typegraph.TypeGraph;

@SuppressWarnings("unchecked")
public class Edge<S, T> {

    private final TypeGraph typeGraph;

    private final Node<S> source;
    private final Node<T> target;

    public Edge(Node<S> sourceNode, Node<T> targetNode) {
        typeGraph = TypeGraph.getInstance();
        source = sourceNode;
        target = targetNode;
    }

    @Override
    public String toString() {
        return source.toString() + "-->" + target.toString();
    }
}
