import javagraph.annotations.*;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

@Node("node")
public class Test {

    public static final Set<Test> nodes = Collections.newSetFromMap(new WeakHashMap<>());

    private final Set<Test> edges;

    public Test() {
        nodes.add(this);
        edges = new HashSet<>();
    }

    @NodeCreate
    public static Test getNode() {
        return new Test();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<Test> visitNode() {
        return Collections.unmodifiableSet(nodes);
    }

    @EdgeCreate("edge")
    public boolean addEdge(Test bank) {
        return edges.add(bank);
    }

    @EdgeDelete("edge")
    public boolean removeEdge(Test bank) {
        return edges.remove(bank);
    }

    @EdgeVisit("edge")
    public Set<Test> getEdges() {
        return Collections.unmodifiableSet(edges);
    }
}
