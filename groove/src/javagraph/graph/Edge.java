package javagraph.graph;

import groove.grammar.AnchorKind;
import groove.grammar.host.HostEdge;
import groove.grammar.host.HostNode;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeLabel;
import groove.graph.EdgeRole;

public class Edge implements HostEdge {

    private final Node source;
    private final TypeEdge typeEdge;
    private final Node target;

    public Edge(Node sourceNode, TypeEdge type, Node targetNode) {
        source = sourceNode;
        typeEdge = type;
        target = targetNode;
    }

    public Node getSource() {
        return source;
    }

    @Override
    public TypeLabel label() {
        return typeEdge.label();
    }

    @Override
    public TypeEdge getType() {
        return typeEdge;
    }

    public Node getTarget() {
        return target;
    }

    public boolean deleteEdge() {
        return source.deleteEdge(label(), target);
    }

    @Override
    public int hashCode() {
        int result = typeEdge.hashCode();
        result = 31 * result + source.hashCode();
        result = 31 * result + target.hashCode();
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        } else if (obj instanceof Edge) {
            Edge edge = (Edge) obj;
            return getType().equals(edge.getType()) &&
                    getSource().equals(edge.getSource()) &&
                    getTarget().equals(edge.getTarget());
        } else {
            return false;
        }
    }

    @Override
    public String toString() {
        return source + "--" + label() + "-->" + target;
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
    public EdgeRole getRole() {
        return label().getRole();
    }

    @Override
    public boolean isLoop() {
        return source.equals(target);
    }

    @Override
    public int getNumber() {
        return hashCode();
    }
}
