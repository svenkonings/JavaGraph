package javagraph.classgraph;

import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class ClassNode implements Serializable {

    private final String nodeName;
    private final String className;
    private final Map<String, ClassEdge> edges;

    private String nodeCreate;
    private String nodeDelete;
    private String nodeVisit;

    public ClassNode(String nodeName, String className) {
        this.nodeName = nodeName;
        this.className = className;
        this.edges = new HashMap<>();
    }

    public String getNodeName() {
        return nodeName;
    }

    public String getClassName() {
        return className;
    }

    public String getNodeCreate() {
        return nodeCreate;
    }

    public boolean hasNodeCreate() {
        return nodeCreate != null;
    }

    public void setNodeCreate(String create) {
        if (hasNodeCreate()) {
            throw new IllegalStateException("NodeCreate can only be set once");
        }
        nodeCreate = create;
    }

    public String getNodeDelete() {
        return nodeDelete;
    }

    public boolean hasNodeDelete() {
        return nodeDelete != null;
    }

    public void setNodeDelete(String delete) {
        if (hasNodeDelete()) {
            throw new IllegalStateException("NodeDelete can only be set once");
        }
        nodeDelete = delete;
    }

    public String getNodeVisit() {
        return nodeVisit;
    }

    public boolean hasNodeVisit() {
        return nodeVisit != null;
    }

    public void setNodeVisit(String visit) {
        if (hasNodeVisit()) {
            throw new IllegalStateException("NodeVisit can only be set once");
        }
        nodeVisit = visit;
    }

    public ClassEdge computeEdgeIfAbsent(String targetName, String label) {
        String target = targetName + "(" + label + ")";
        return edges.computeIfAbsent(target, key -> new ClassEdge(nodeName, label, targetName));
    }

    public Set<ClassEdge> getEdges() {
        return new HashSet<>(edges.values());
    }
}
