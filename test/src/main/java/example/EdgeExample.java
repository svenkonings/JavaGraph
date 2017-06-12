package example;

import javagraph.annotations.*;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

@Node
public class EdgeExample {

    private static final Set<EdgeExample> nodes = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

    private final Set<NodeExample> nodeExampleEdges;
    private final Set<AnotherNodeExample> anotherNodeExampleEdges;

    public EdgeExample() {
        nodes.add(this);
        nodeExampleEdges = new HashSet<>();
        anotherNodeExampleEdges = new HashSet<>();
    }

    @EdgeCreate
    public boolean addNodeExampleEdge(NodeExample nodeExample) {
        return nodeExampleEdges.add(nodeExample);
    }

    @EdgeDelete
    public boolean removeNodeExampleEdge(NodeExample nodeExample) {
        return nodeExampleEdges.remove(nodeExample);
    }

    @EdgeVisit
    public Set<NodeExample> getNodeExampleEdges() {
        return Collections.unmodifiableSet(nodeExampleEdges);
    }

    @EdgeCreate
    public boolean addAnotherNodeExampleEdge(AnotherNodeExample anotherNodeExample) {
        return anotherNodeExampleEdges.add(anotherNodeExample);
    }

    @EdgeDelete
    public boolean removeAnotherNodeExampleEdge(AnotherNodeExample anotherNodeExample) {
        return anotherNodeExampleEdges.remove(anotherNodeExample);
    }

    @EdgeVisit
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
