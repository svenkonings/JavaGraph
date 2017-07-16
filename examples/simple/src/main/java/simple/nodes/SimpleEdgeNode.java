package simple.nodes;

import javagraph.annotations.*;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

@Node("EdgeExample")
public class SimpleEdgeNode {

    private static final Set<SimpleEdgeNode> nodes = Collections.newSetFromMap(new WeakHashMap<>());

    private final Set<SimpleNode> nodeExampleEdges;
    private final Set<SimpleNode> nodeLabelExampleEdges;
    private final Set<AnotherSimpleNode> anotherNodeExampleEdges;

    public SimpleEdgeNode() {
        nodes.add(this);
        nodeExampleEdges = new HashSet<>();
        nodeLabelExampleEdges = new HashSet<>();
        anotherNodeExampleEdges = new HashSet<>();
    }

    @EdgeCreate("LabelExample")
    public boolean addNodeExampleEdge(SimpleNode nodeExample) {
        return nodeExampleEdges.add(nodeExample);
    }

    @EdgeDelete("LabelExample")
    public boolean removeNodeExampleEdge(SimpleNode nodeExample) {
        return nodeExampleEdges.remove(nodeExample);
    }

    @EdgeVisit("LabelExample")
    public Set<SimpleNode> getNodeExampleEdges() {
        return Collections.unmodifiableSet(nodeExampleEdges);
    }

    @EdgeCreate("AnotherLabelExample")
    public boolean addNodeLabelExampleEdge(SimpleNode nodeExample) {
        return nodeLabelExampleEdges.add(nodeExample);
    }

    @EdgeDelete("AnotherLabelExample")
    public boolean removeNodeLabelExampleEdge(SimpleNode nodeExample) {
        return nodeLabelExampleEdges.remove(nodeExample);
    }

    @EdgeVisit("AnotherLabelExample")
    public Set<SimpleNode> getNodeLabelExampleEdges() {
        return Collections.unmodifiableSet(nodeLabelExampleEdges);
    }

    @EdgeCreate("LabelExample")
    public boolean addAnotherNodeExampleEdge(AnotherSimpleNode anotherNodeExample) {
        return anotherNodeExampleEdges.add(anotherNodeExample);
    }

    @EdgeDelete("LabelExample")
    public boolean removeAnotherNodeExampleEdge(AnotherSimpleNode anotherNodeExample) {
        return anotherNodeExampleEdges.remove(anotherNodeExample);
    }

    @EdgeVisit("LabelExample")
    public Set<AnotherSimpleNode> getAnotherNodeExampleEdges() {
        return Collections.unmodifiableSet(anotherNodeExampleEdges);
    }

    @NodeCreate
    public static SimpleEdgeNode getNode() {
        return new SimpleEdgeNode();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<SimpleEdgeNode> visitNode() {
        return Collections.unmodifiableSet(nodes);
    }
}
