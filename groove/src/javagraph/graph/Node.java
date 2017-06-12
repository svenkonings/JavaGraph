package javagraph.graph;

import groove.grammar.AnchorKind;
import groove.grammar.host.HostNode;
import javagraph.typegraph.TypeEdge;
import javagraph.typegraph.TypeGraph;
import javagraph.typegraph.TypeNode;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

@SuppressWarnings("unchecked")
public class Node<S> implements HostNode {

    private final TypeGraph typeGraph;

    private final S object;
    private final Class<?> objectClass;
    private final TypeNode typeNode;

    public Node(S nodeObject) {
        typeGraph = TypeGraph.getInstance();

        object = nodeObject;
        objectClass = object.getClass();
        typeNode = typeGraph.getNode(objectClass);
    }

    public S getObject() {
        return object;
    }

    public Class<?> getObjectClass() {
        return objectClass;
    }

    public TypeNode getTypeNode() {
        return typeNode;
    }

    public boolean deleteNode() {
        boolean deleted;
        try {
            Method deleteNode = objectClass.getMethod(typeNode.getNodeDelete());
            deleted = (boolean) deleteNode.invoke(object);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new GraphException(e);
        }
        return deleted;
    }

    public <T> Edge<S, T> createEdge(Node<T> targetNode) {
        T target = targetNode.getObject();
        Class<?> targetClass = targetNode.getObjectClass();
        TypeNode targetTypeNode = targetNode.getTypeNode();
        TypeEdge typeEdge = typeNode.getEdge(targetTypeNode);
        boolean created;
        try {
            Method createEdge = objectClass.getMethod(typeEdge.getEdgeCreate(), targetClass);
            created = (boolean) createEdge.invoke(object, target);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new GraphException(e);
        }
        if (created) {
            return new Edge<>(this, targetNode);
        } else {
            return null;
        }
    }

    public <T> boolean deleteEdge(Node<T> targetNode) {
        T target = targetNode.getObject();
        Class<?> targetClass = targetNode.getObjectClass();
        TypeNode targetTypeNode = targetNode.getTypeNode();
        TypeEdge typeEdge = typeNode.getEdge(targetTypeNode);
        boolean deleted;
        try {
            Method deleteEdge = objectClass.getMethod(typeEdge.getEdgeDelete(), targetClass);
            deleted = (boolean) deleteEdge.invoke(object, target);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new GraphException(e);
        }
        return deleted;
    }

    public <T> Set<Edge<S, T>> visitEdge(Class<T> targetClass) {
        TypeNode targetTypeNode = typeGraph.getNode(targetClass);
        TypeEdge typeEdge = typeNode.getEdge(targetTypeNode);
        Set<T> targets;
        try {
            Method visitEdge = objectClass.getMethod(typeEdge.getEdgeVisit());
            targets = (Set<T>) visitEdge.invoke(object);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new GraphException(e);
        }
        return targets.stream().map(Node::new).map(target -> new Edge<>(this, target)).collect(Collectors.toSet());
    }

    public Set<Edge<S, ?>> visitEdges() {
        Set<Edge<S, ?>> edges = new HashSet<>();
        for (TypeEdge typeEdge : typeNode.getEdges()) {
            Set<?> targets;
            try {
                Method visitEdge = objectClass.getMethod(typeEdge.getEdgeVisit());
                targets = (Set<?>) visitEdge.invoke(object);
            } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
                throw new GraphException(e);
            }
            targets.stream().map(Node::new).map(target -> new Edge<>(this, target)).forEach(edges::add);

        }
        return edges;
    }

    @Override
    public String toString() {
        return object.toString();
    }

    @Override
    public AnchorKind getAnchorKind() {
        return AnchorKind.NODE;
    }

    @Override
    public groove.grammar.type.TypeNode getType() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int getNumber() {
        return hashCode();
    }
}
