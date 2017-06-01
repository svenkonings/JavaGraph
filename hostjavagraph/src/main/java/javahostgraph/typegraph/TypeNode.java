package javahostgraph.typegraph;

import com.google.common.collect.BiMap;
import com.google.common.collect.HashBiMap;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public class TypeNode implements Serializable {

    private final String name;
    private final BiMap<String, TypeEdge> edges;

    private String nodeCreate;
    private String nodeDelete;
    private String nodeVisit;

    public TypeNode(String name) {
        this.name = name;
        edges = HashBiMap.create();
    }

    public String getName() {
        return name;
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

    public boolean addEdge(TypeEdge edge) {
        return edges.put(edge.getTarget(), edge) == null;
    }

    public TypeEdge getEdge(TypeNode target) {
        return getEdge(target.getName());
    }

    public TypeEdge getEdge(String target) {
        if (!edges.containsKey(target)) {
            throw new IllegalArgumentException("There is no edge between " + getName() + " and " + target);
        }
        return edges.get(target);
    }

    public TypeEdge computeEdgeIfAbsent(String target, Supplier<TypeEdge> supplier) {
        return edges.computeIfAbsent(target, key -> supplier.get());
    }

    public boolean removeEdge(TypeEdge edge) {
        return edges.inverse().remove(edge) != null;
    }

    public Set<TypeEdge> getEdges() {
        return Collections.unmodifiableSet(edges.values());
    }

    @Override
    public String toString() {
        List<String> methods = new ArrayList<>();
        if (hasNodeCreate()) methods.add("NodeCreate=" + getNodeCreate());
        if (hasNodeDelete()) methods.add("NodeDelete=" + getNodeDelete());
        if (hasNodeVisit()) methods.add("NodeVisit=" + getNodeVisit());
        methods.add("Edges=" + getEdges());
        return getName() + methods.stream().collect(Collectors.joining(", ", "{", "}"));
    }
}
