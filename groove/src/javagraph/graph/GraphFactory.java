package javagraph.graph;

import groove.algebra.Algebra;
import groove.grammar.host.*;
import groove.grammar.rule.RuleToHostMap;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeLabel;
import groove.grammar.type.TypeNode;
import groove.graph.Element;
import groove.graph.Label;
import groove.graph.NodeFactory;
import groove.util.Dispenser;

public class GraphFactory extends HostFactory {

    private final Graph graph;

    protected GraphFactory(Graph graph) {
        super(graph.getTypeGraph().getFactory(), false);
        this.graph = graph;
    }

    @Override
    public HostNode createNode() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isUsed(int nr) {
        return graph.nodeSet().stream().anyMatch(node -> node.getNumber() == nr);
    }

    @Override
    public int getMaxNodeNr() {
        return graph.nodeSet().stream().mapToInt(Element::getNumber).max().orElse(0);
    }

    @Override
    public HostNode getNode(int nr) {
        return graph.nodeSet().stream().filter(node -> node.getNumber() == nr).findAny().orElse(null);
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
        throw new UnsupportedOperationException();
    }

    @Override
    public HostEdge createEdge(HostNode source, String text, HostNode target) {
        if (source instanceof Node && target instanceof Node) {
            Node sourceNode = (Node) source;
            TypeLabel typeLabel = TypeLabel.createLabel(text);
            TypeEdge typeEdge = getTypeGraph().getTypeEdge(source.getType(), typeLabel, target.getType(), true);
            Node targetNode = (Node) target;
            return new Edge(sourceNode, typeEdge, targetNode);
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public NodeFactory<HostNode> nodes(TypeNode type) {
        return new GraphNodeFactory(type);
    }

    @Override
    public NodeFactory<HostNode> values(Algebra<?> algebra, Object value) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ValueNode createNode(Algebra<?> algebra, Object value) {
        throw new UnsupportedOperationException();
    }

    @Override
    public HostEdge createEdge(HostNode source, Label label, HostNode target) {
        if (source instanceof Node && label instanceof TypeLabel && target instanceof Node) {
            Node sourceNode = (Node) source;
            TypeLabel typeLabel = (TypeLabel) label;
            TypeEdge typeEdge = getTypeGraph().getTypeEdge(source.getType(), typeLabel, target.getType(), true);
            Node targetNode = (Node) target;
            return new Edge(sourceNode, typeEdge, targetNode);
        } else {
            throw new UnsupportedOperationException();
        }
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
    public HostEdge createEdge(HostNode source, TypeEdge typeEdge, HostNode target) {
        if (source instanceof Node && target instanceof Node) {
            Node sourceNode = (Node) source;
            Node targetNode = (Node) target;
            return new Edge(sourceNode, typeEdge, targetNode);
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public HostGraphMorphism createMorphism() {
        return new HostGraphMorphism(this);
    }

    @Override
    public RuleToHostMap createRuleToHostMap() {
        return new RuleToHostMap(this);
    }

    @Override
    public HostNode[] normalise(HostNode[] nodes) {
        return nodes;
    }

    @Override
    public boolean isSimple() {
        return true;
    }

    public class GraphNodeFactory extends NodeFactory<HostNode> {

        private final TypeNode typeNode;
        private final Dispenser nodeNrDispenser;

        public GraphNodeFactory(TypeNode type) {
            typeNode = type;
            nodeNrDispenser = Dispenser.counter();
        }

        @Override
        public HostNode createNode() {
            return graph.createNode(typeNode);
        }

        @Override
        public HostNode createNode(int nr) {
            return graph.createNode(typeNode);
        }

        @Override
        public HostNode createNode(Dispenser dispenser) {
            return graph.createNode(typeNode);
        }

        @Override
        protected HostNode getNode(int nr) {
            return GraphFactory.this.getNode(nr);
        }

        @Override
        protected void registerNode(HostNode node) {
            throw new UnsupportedOperationException();
        }

        @Override
        protected boolean isAllowed(HostNode node) {
            return typeNode.equals(node.getType());
        }

        @Override
        protected HostNode newNode(int nr) {
            throw new UnsupportedOperationException();
        }

        @Override
        protected Dispenser getNodeNrDispenser() {
            return nodeNrDispenser;
        }
    }
}
