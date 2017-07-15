package javagraph.classgraph;

import java.io.Serializable;

/**
 * A edge consisting of a source node name, a target node name, and a label.
 */
public class ClassEdge implements Serializable {

    private final String source;
    private final String label;
    private final String target;

    private String edgeCreate;
    private String edgeDelete;
    private String edgeVisit;

    /**
     * Creates a new edge with the given source node name, label and target node name.
     *
     * @param source the given source node name
     * @param label  the given label
     * @param target the given target node name
     */
    public ClassEdge(String source, String label, String target) {
        this.source = source;
        this.label = label;
        this.target = target;
    }

    /**
     * @return the name of the source node of this edge
     */
    public String getSource() {
        return source;
    }

    /**
     * @return the label of this edge
     */
    public String getLabel() {
        return label;
    }

    /**
     * @return the name of the target node of this edge
     */
    public String getTarget() {
        return target;
    }

    /**
     * @return the name of the edge create method
     */
    public String getEdgeCreate() {
        return edgeCreate;
    }

    /**
     * @return wheter this edge has a create method
     */
    public boolean hasEdgeCreate() {
        return edgeCreate != null;
    }

    /**
     * Set the name of the edge create method. The name can only be set once.
     *
     * @param name the name of the edge create method
     */
    public void setEdgeCreate(String name) {
        if (hasEdgeCreate()) {
            throw new IllegalStateException("EdgeCreate can only be set once");
        }
        edgeCreate = name;
    }

    /**
     * @return the name of the edge delete method
     */
    public String getEdgeDelete() {
        return edgeDelete;
    }

    /**
     * @return wheter this edge has a delete method
     */
    public boolean hasEdgeDelete() {
        return edgeDelete != null;
    }

    /**
     * Set the name of the edge delete method. The name can only be set once.
     *
     * @param name the name of the edge delete method
     */
    public void setEdgeDelete(String name) {
        if (hasEdgeDelete()) {
            throw new IllegalStateException("EdgeDelete can only be set once");
        }
        edgeDelete = name;
    }

    /**
     * @return the name of the edge visit method
     */
    public String getEdgeVisit() {
        return edgeVisit;
    }

    /**
     * @return wheter this edge has a visit method
     */
    public boolean hasEdgeVisit() {
        return edgeVisit != null;
    }

    /**
     * Set the name of the edge visit method. The name can only be set once.
     *
     * @param name the name of the edge visit method
     */
    public void setEdgeVisit(String name) {
        if (hasEdgeVisit()) {
            throw new IllegalStateException("EdgeVisit can only be set once");
        }
        edgeVisit = name;
    }
}
