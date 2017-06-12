package javahostgraph.graph;

import groove.grammar.AnchorKind;
import groove.grammar.host.HostEdge;
import groove.grammar.host.HostNode;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeLabel;
import groove.graph.EdgeRole;
import javahostgraph.typegraph.TypeGraph;
import javahostgraph.typegraph.TypeNode;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@SuppressWarnings("unchecked")
public class Edge<S, T> implements HostEdge{

    private final TypeGraph typeGraph;

    private final Node<S> source;
    private final Node<T> target;

    public Edge(Node<S> sourceNode, Node<T> targetNode) {
        typeGraph = TypeGraph.getInstance();
        source = sourceNode;
        target = targetNode;
    }

    public Node<S> getSource() {
        return source;
    }

    public Node<T> getTarget() {
        return target;
    }

    public boolean deleteEdge() {
        return source.deleteEdge(target);
    }

    @Override
    public String toString() {
        return source.toString() + "-->" + target.toString();
    }

    @Override
    public HostNode source() {
        return source;
    }

    @Override
    public HostNode target() {
        return target;
    }

    @Override
    public AnchorKind getAnchorKind() {
        return AnchorKind.EDGE;
    }

    @Override
    public TypeLabel label() {
        throw new UnsupportedOperationException();
    }

    @Override
    public EdgeRole getRole() {
        return EdgeRole.BINARY;
    }

    @Override
    public boolean isLoop() {
        return source.equals(target);
    }

    @Override
    public TypeEdge getType() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int getNumber() {
        return hashCode();
    }
}
