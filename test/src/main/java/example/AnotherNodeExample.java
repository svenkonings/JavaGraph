package example;


import javahostgraph.annotations.Node;
import javahostgraph.annotations.NodeCreate;
import javahostgraph.annotations.NodeDelete;
import javahostgraph.annotations.NodeVisit;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

@Node
public class AnotherNodeExample {

    private static final Set<AnotherNodeExample> nodes = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

    public AnotherNodeExample() {
        nodes.add(this);
    }

    @NodeCreate
    public static AnotherNodeExample getNode() {
        return new AnotherNodeExample();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<AnotherNodeExample> visitNode() {
        return Collections.unmodifiableSet(nodes);
    }
}
