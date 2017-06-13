package javagraph.classgraph;

import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class ClassGraph implements Serializable {

    private final Map<String, ClassNode> nodes;

    public ClassGraph() {
        this.nodes = new HashMap<>();
    }

    public void addNode(ClassNode node) {
        String name = node.getName();
        if (nodes.containsKey(name)) {
            throw new IllegalArgumentException("Node " + node + " already exists");
        }
        nodes.put(name, node);
    }

    public Set<ClassNode> getNodes() {
        return new HashSet<>(nodes.values());
    }
}
