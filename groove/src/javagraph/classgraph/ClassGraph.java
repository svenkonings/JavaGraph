package javagraph.classgraph;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/**
 * Graph containing {@link ClassNode}s.
 */
public class ClassGraph implements Serializable {

    private final Set<ClassNode> nodes;

    /**
     * Create an empty graph.
     */
    public ClassGraph() {
        this.nodes = new HashSet<>();
    }

    /**
     * Add the given {@link ClassNode} to the graph.
     *
     * @param node the given {@link ClassNode}
     */
    public void addNode(ClassNode node) {
        if (nodes.contains(node)) {
            throw new IllegalArgumentException("Node " + node + " already exists");
        }
        nodes.add(node);
    }

    /**
     * @return the set of {@link ClassNode}s in this graph
     */
    public Set<ClassNode> getNodes() {
        return Collections.unmodifiableSet(nodes);
    }
}
