package example;


import javagraph.annotations.Node;
import javagraph.annotations.NodeCreate;
import javagraph.annotations.NodeDelete;
import javagraph.annotations.NodeVisit;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

@Node("AnotherNodeExample")
public class AnotherNodeExample {

    private static final Set<AnotherNodeExample> nodes = Collections.newSetFromMap(new WeakHashMap<>());

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
