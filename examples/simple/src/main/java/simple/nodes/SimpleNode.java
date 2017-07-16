package simple.nodes;

import javagraph.annotations.Node;
import javagraph.annotations.NodeCreate;
import javagraph.annotations.NodeDelete;
import javagraph.annotations.NodeVisit;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

@Node("NodeExample")
public class SimpleNode {

    private static final Set<SimpleNode> nodes = Collections.newSetFromMap(new WeakHashMap<>());

    public SimpleNode() {
        nodes.add(this);
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
}
