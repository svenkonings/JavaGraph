package javagraph.classgraph;

import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * A node consisting of a node name, a Java class name, a mapping of labels to {@link ClassEdge}s and the names of the
 * methods that belong to this node.
 */
public class ClassNode implements Serializable {

    private final String nodeName;
    private final String className;
    private final Map<String, ClassEdge> edges;

    // Node methods
    private String nodeCreate;
    private String nodeDelete;
    private String nodeVisit;

    /**
     * Create a new node with the given node and class names
     *
     * @param nodeName  the name of this node
     * @param className the name of the Java class this node represents
     */
    public ClassNode(String nodeName, String className) {
        this.nodeName = nodeName;
        this.className = className;
        this.edges = new HashMap<>();
    }

    /**
     * @return the name of this node
     */
    public String getNodeName() {
        return nodeName;
    }

    /**
     * @return the name of the Java class this node represents
     */
    public String getClassName() {
        return className;
    }

    /**
     * @return the name of the node create method
     */
    public String getNodeCreate() {
        return nodeCreate;
    }

    /**
     * @return wheter this node has a create method
     */
    public boolean hasNodeCreate() {
        return nodeCreate != null;
    }

    /**
     * Set the name of the node create method. The name can only be set once.
     *
     * @param name the name of the node create method
     */
    public void setNodeCreate(String name) {
        if (hasNodeCreate()) {
            throw new IllegalStateException("NodeCreate can only be set once");
        }
        nodeCreate = name;
    }

    /**
     * @return the name of the node delete method
     */
    public String getNodeDelete() {
        return nodeDelete;
    }

    /**
     * @return wheter this node has a delete method
     */
    public boolean hasNodeDelete() {
        return nodeDelete != null;
    }

    /**
     * Set the name of the node delete method. The name can only be set once.
     *
     * @param name the name of the node delete method
     */
    public void setNodeDelete(String name) {
        if (hasNodeDelete()) {
            throw new IllegalStateException("NodeDelete can only be set once");
        }
        nodeDelete = name;
    }

    /**
     * @return the name of the node visit method
     */
    public String getNodeVisit() {
        return nodeVisit;
    }

    /**
     * @return wheter this node has a visit method
     */
    public boolean hasNodeVisit() {
        return nodeVisit != null;
    }

    /**
     * Set the name of the node visit method. The name can only be set once.
     *
     * @param name the name of the node visit method
     */
    public void setNodeVisit(String name) {
        if (hasNodeVisit()) {
            throw new IllegalStateException("NodeVisit can only be set once");
        }
        nodeVisit = name;
    }

    /**
     * If this node has a {@link ClassEdge} with the given label and target, the exisiting edge is returned. Otherwise,
     * a new {@link ClassEdge} with this node as source and the given label and target is created
     *
     * @param targetName the name of the target node
     * @param label      the label of the edge
     * @return the existing {@link ClassEdge} if it exists and a new {@link ClassEdge} otherwise
     */
    public ClassEdge computeEdgeIfAbsent(String targetName, String label) {
        String target = targetName + "(" + label + ")";
        return edges.computeIfAbsent(target, key -> new ClassEdge(nodeName, label, targetName));
    }

    /**
     * @return the set of {@link ClassEdge}s associated with this node
     */
    public Set<ClassEdge> getEdges() {
        return new HashSet<>(edges.values());
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj instanceof ClassNode) {
            ClassNode classNode = (ClassNode) obj;
            return nodeName.equals(classNode.nodeName) && className.equals(classNode.className);
        } else {
            return false;
        }
    }

    @Override
    public int hashCode() {
        int result = nodeName.hashCode();
        result = 31 * result + className.hashCode();
        return result;
    }
}
