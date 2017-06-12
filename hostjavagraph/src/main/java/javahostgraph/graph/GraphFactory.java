package javahostgraph.graph;

import groove.algebra.Algebra;
import groove.grammar.host.*;
import groove.grammar.rule.RuleToHostMap;
import groove.grammar.type.*;
import groove.graph.Label;
import groove.graph.NodeFactory;
import groove.util.Dispenser;

public class GraphFactory extends HostFactory {

    private final Graph graph;

    protected GraphFactory(Graph graph) {
        super(null, false);
        this.graph = graph;
    }

    @Override
    public HostNode createNode() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isUsed(int nr) {
        return nr < graph.nodeCount();
    }

    @Override
    public int getMaxNodeNr() {
        return graph.nodeCount();
    }

    @Override
    public HostNode getNode(int nr) {
        return graph.nodeSet().stream().skip(nr).findFirst().orElse(null);
    }

    @Override
    public HostNode createNode(int nr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsNode(HostNode node) {
        return graph.containsNode(node);
    }

    @Override
    public int getNodeCount() {
        return graph.size();
    }

    @Override
    public HostNode createNode(Dispenser dispenser) {
        return graph.addNode(dispenser.getNext());
    }

    @Override
    public HostEdge createEdge(HostNode source, String text, HostNode target) {
        return ((Node<?>) source).createEdge((Node<?>) target);
    }

    @Override
    public NodeFactory<HostNode> nodes(TypeNode type) {
        return this;
    }

    @Override
    public NodeFactory<HostNode> values(Algebra<?> algebra, Object value) {
        return this;
    }

    @Override
    public ValueNode createNode(Algebra<?> algebra, Object value) {
        throw new UnsupportedOperationException();
    }

    @Override
    public HostEdge createEdge(HostNode source, Label label, HostNode target) {
        return ((Node<?>) source).createEdge((Node<?>) target);
    }

    @Override
    public boolean containsEdge(HostEdge edge) {
        return graph.containsEdge(edge);
    }

    @Override
    public int getEdgeCount() {
        return graph.edgeSet().size();
    }

    @Override
    public HostEdge createEdge(HostNode source, TypeEdge type, HostNode target) {
        return ((Node<?>) source).createEdge((Node<?>) target);
    }

    @Override
    public TypeLabel createLabel(String text) {
        throw new UnsupportedOperationException();
    }

    @Override
    public HostGraphMorphism createMorphism() {
        throw new UnsupportedOperationException();
    }

    @Override
    public RuleToHostMap createRuleToHostMap() {
        throw new UnsupportedOperationException();
    }

    @Override
    public TypeGraph getTypeGraph() {
        throw new UnsupportedOperationException();
    }

    @Override
    public TypeFactory getTypeFactory() {
        throw new UnsupportedOperationException();
    }

    @Override
    public HostNode[] normalise(HostNode[] nodes) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isSimple() {
        return false;
    }
}
