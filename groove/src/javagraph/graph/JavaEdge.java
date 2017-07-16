package javagraph.graph;

import groove.grammar.AnchorKind;
import groove.grammar.host.HostEdge;
import groove.grammar.host.HostNode;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeLabel;
import groove.graph.EdgeRole;

/**
 * {@link HostEdge} implementation for Java graphs.
 */
public class JavaEdge implements HostEdge {

    private final JavaNode source;
    private final TypeEdge typeEdge;
    private final JavaNode target;

    /**
     * Creates a new edge with the given source node, {@link TypeEdge} and target node.
     *
     * @param sourceNode the given source node
     * @param type       the given {@link TypeEdge}
     * @param targetNode the given target node
     * @throws JavaGraphException if the type edge is not a Java type edge, or the source or target types don't match
     */
    public JavaEdge(JavaNode sourceNode, TypeEdge type, JavaNode targetNode) throws JavaGraphException {
        if (!type.isJavaEdge()) {
            throw new JavaGraphException("Type edge %s is not a Java type edge", type);
        } else if (!type.source().equals(sourceNode.getType())) {
            throw new JavaGraphException(
                    "The source type %s of the type edge doesn't match the type %s of the source node",
                    type.source(), sourceNode.getType());
        } else if (!type.target().equals(targetNode.getType())) {
            throw new JavaGraphException(
                    "The target type %s of the type edge doesn't match the type %s of the target node",
                    type.target(), targetNode.getType());
        }
        source = sourceNode;
        typeEdge = type;
        target = targetNode;
    }

    /**
     * @return the source node of this edge
     */
    public JavaNode getSource() {
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

    /**
     * @return the target node of this edge
     */
    public JavaNode getTarget() {
        return target;
    }

    /**
     * Delete this edge.
     *
     * @return whether the deletion was succesful
     * @throws JavaGraphException if the method couldn't be called
     * @see JavaNode#deleteEdge(TypeLabel, JavaNode)
     */
    public boolean deleteEdge() throws JavaGraphException {
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
        } else if (obj instanceof JavaEdge) {
            JavaEdge edge = (JavaEdge) obj;
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
