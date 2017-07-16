package simple.nodes;


import javagraph.annotations.Node;
import javagraph.annotations.NodeCreate;
import javagraph.annotations.NodeDelete;
import javagraph.annotations.NodeVisit;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

@Node("AnotherNodeExample")
public class AnotherSimpleNode {

    private static final Set<AnotherSimpleNode> nodes = Collections.newSetFromMap(new WeakHashMap<>());

    public AnotherSimpleNode() {
        nodes.add(this);
    }

    @NodeCreate
    public static AnotherSimpleNode getNode() {
        return new AnotherSimpleNode();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<AnotherSimpleNode> visitNode() {
        return Collections.unmodifiableSet(nodes);
    }
}
