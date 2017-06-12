package javagraph.typegraph;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class TypeEdge implements Serializable {

    private final String source;
    private final String target;

    private String edgeCreate;
    private String edgeDelete;
    private String edgeVisit;

    public TypeEdge(String source, String target) {
        this.source = source;
        this.target = target;
    }

    public String getSource() {
        return source;
    }

    public String getTarget() {
        return target;
    }

    public String getEdgeCreate() {
        return edgeCreate;
    }

    public boolean hasEdgeCreate() {
        return edgeCreate != null;
    }

    public void setEdgeCreate(String create) {
        if (hasEdgeCreate()) {
            throw new IllegalStateException("EdgeCreate can only be set once");
        }
        edgeCreate = create;
    }

    public String getEdgeDelete() {
        return edgeDelete;
    }

    public boolean hasEdgeDelete() {
        return edgeDelete != null;
    }

    public void setEdgeDelete(String delete) {
        if (hasEdgeDelete()) {
            throw new IllegalStateException("EdgeDelete can only be set once");
        }
        edgeDelete = delete;
    }

    public String getEdgeVisit() {
        return edgeVisit;
    }

    public boolean hasEdgeVisit() {
        return edgeVisit != null;
    }

    public void setEdgeVisit(String visit) {
        if (hasEdgeVisit()) {
            throw new IllegalStateException("EdgeVisit can only be set once");
        }
        edgeVisit = visit;
    }

    @Override
    public String toString() {
        List<String> methods = new ArrayList<>();
        if (hasEdgeCreate()) methods.add("EdgeCreate=" + getEdgeCreate());
        if (hasEdgeDelete()) methods.add("EdgeDelete=" + getEdgeDelete());
        if (hasEdgeVisit()) methods.add("EdgeVisit=" + getEdgeVisit());
        return getSource() + "-->" + getTarget() + methods.stream().collect(Collectors.joining(", ", "{", "}"));
    }
}
