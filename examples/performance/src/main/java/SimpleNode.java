import javagraph.annotations.*;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

@Node("node")
public class SimpleNode {

    public static final Set<SimpleNode> nodes = Collections.newSetFromMap(new WeakHashMap<>());

    private final Set<SimpleNode> edges;

    public SimpleNode() {
        nodes.add(this);
        edges = new HashSet<>();
    }

    @NodeCreate
    public static SimpleNode getNode() {
        return new SimpleNode();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<SimpleNode> visitNode() {
        return Collections.unmodifiableSet(nodes);
    }

    @EdgeCreate("edge")
    public boolean addEdge(SimpleNode bank) {
        return edges.add(bank);
    }

    @EdgeDelete("edge")
    public boolean removeEdge(SimpleNode bank) {
        return edges.remove(bank);
    }

    @EdgeVisit("edge")
    public Set<SimpleNode> getEdges() {
        return Collections.unmodifiableSet(edges);
    }
}
