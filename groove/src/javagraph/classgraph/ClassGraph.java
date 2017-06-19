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
        if (nodes.containsKey(node.getNodeName())) {
            throw new IllegalArgumentException("Node " + node + " already exists");
        }
        nodes.put(node.getNodeName(), node);
    }

    public Set<ClassNode> getNodes() {
        return new HashSet<>(nodes.values());
    }
}
