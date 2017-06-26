package simple;

import javagraph.annotations.Node;
import javagraph.annotations.NodeCreate;
import javagraph.annotations.NodeDelete;
import javagraph.annotations.NodeVisit;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

@Node("NodeExample")
public class NodeExample {

    private static final Set<NodeExample> nodes = Collections.newSetFromMap(new WeakHashMap<>());

    public NodeExample() {
        nodes.add(this);
    }

    @NodeCreate
    public static NodeExample getNode() {
        return new NodeExample();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<NodeExample> visitNode() {
        return Collections.unmodifiableSet(nodes);
    }
}
