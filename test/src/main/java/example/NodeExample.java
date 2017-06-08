package example;

import javahostgraph.annotations.Node;
import javahostgraph.annotations.NodeCreate;
import javahostgraph.annotations.NodeDelete;
import javahostgraph.annotations.NodeVisit;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

@Node
public class NodeExample {

    private static final Set<NodeExample> nodes = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

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
