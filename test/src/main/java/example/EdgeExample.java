package example;

import javagraph.annotations.*;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

@Node("EdgeExample")
public class EdgeExample {

    private static final Set<EdgeExample> nodes = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

    private final Set<NodeExample> nodeExampleEdges;
    private final Set<NodeExample> nodeLabelExampleEdges;
    private final Set<AnotherNodeExample> anotherNodeExampleEdges;

    public EdgeExample() {
        nodes.add(this);
        nodeExampleEdges = new HashSet<>();
        nodeLabelExampleEdges = new HashSet<>();
        anotherNodeExampleEdges = new HashSet<>();
    }

    @EdgeCreate("LabelExample")
    public boolean addNodeExampleEdge(NodeExample nodeExample) {
        return nodeExampleEdges.add(nodeExample);
    }

    @EdgeDelete("LabelExample")
    public boolean removeNodeExampleEdge(NodeExample nodeExample) {
        return nodeExampleEdges.remove(nodeExample);
    }

    @EdgeVisit("LabelExample")
    public Set<NodeExample> getNodeExampleEdges() {
        return Collections.unmodifiableSet(nodeExampleEdges);
    }

    @EdgeCreate("AnotherLabelExample")
    public boolean addNodeLabelExampleEdge(NodeExample nodeExample) {
        return nodeLabelExampleEdges.add(nodeExample);
    }

    @EdgeDelete("AnotherLabelExample")
    public boolean removeNodeLabelExampleEdge(NodeExample nodeExample) {
        return nodeLabelExampleEdges.remove(nodeExample);
    }

    @EdgeVisit("AnotherLabelExample")
    public Set<NodeExample> getNodeLabelExampleEdges() {
        return Collections.unmodifiableSet(nodeLabelExampleEdges);
    }

    @EdgeCreate("LabelExample")
    public boolean addAnotherNodeExampleEdge(AnotherNodeExample anotherNodeExample) {
        return anotherNodeExampleEdges.add(anotherNodeExample);
    }

    @EdgeDelete("LabelExample")
    public boolean removeAnotherNodeExampleEdge(AnotherNodeExample anotherNodeExample) {
        return anotherNodeExampleEdges.remove(anotherNodeExample);
    }

    @EdgeVisit("LabelExample")
    public Set<AnotherNodeExample> getAnotherNodeExampleEdges() {
        return Collections.unmodifiableSet(anotherNodeExampleEdges);
    }

    @NodeCreate
    public static EdgeExample getNode() {
        return new EdgeExample();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<EdgeExample> visitNode() {
        return Collections.unmodifiableSet(nodes);
    }
}
