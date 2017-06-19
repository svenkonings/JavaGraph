package javagraph.classgraph;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class ClassGraph implements Serializable {

    private final Set<ClassNode> nodes;

    public ClassGraph() {
        this.nodes = new HashSet<>();
    }

    public void addNode(ClassNode node) {
        if (nodes.contains(node)) {
            throw new IllegalArgumentException("Node " + node + " already exists");
        }
        nodes.add(node);
    }

    public Set<ClassNode> getNodes() {
        return Collections.unmodifiableSet(nodes);
    }
}
