package javagraph.graph;

import groove.grammar.AnchorKind;
import groove.grammar.host.HostNode;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeGraph;
import groove.grammar.type.TypeNode;
import javagraph.TypeGraphLoader;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

@SuppressWarnings("unchecked")
public class Node<S> implements HostNode {

    private final TypeGraph typeGraph;

    private final S object;
    private final Class<S> objectClass;
    private final TypeNode typeNode;

    public Node(S nodeObject) {
        typeGraph = TypeGraphLoader.getInstance();

        object = nodeObject;
        objectClass = (Class<S>) object.getClass();
        typeNode = typeGraph.getNodeByClass(objectClass);
    }

    public S getObject() {
        return object;
    }

    public Class<S> getObjectClass() {
        return objectClass;
    }

    @Override
    public TypeNode getType() {
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
        TypeNode targetTypeNode = targetNode.getType();
        TypeEdge typeEdge = typeGraph.getEdge(typeNode, "", targetTypeNode);
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
        TypeNode targetTypeNode = targetNode.getType();
        TypeEdge typeEdge = typeGraph.getEdge(typeNode, "", targetTypeNode);
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
        TypeNode targetTypeNode = typeGraph.getNodeByClass(targetClass);
        TypeEdge typeEdge = typeGraph.getEdge(typeNode, "", targetTypeNode);
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
        for (TypeEdge typeEdge : typeGraph.outEdgeSet(typeNode)) {
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
    public int hashCode() {
        int result = typeNode.hashCode();
        result = 31 * result + objectClass.hashCode();
        result = 31 * result + object.hashCode();
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        } else if (obj instanceof Node<?>) {
            Node<?> node = (Node<?>) obj;
            return getType().equals(node.getType()) &&
                    getObjectClass().equals(node.getObjectClass()) &&
                    getObject().equals(node.getObject());
        } else {
            return false;
        }
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
    public int getNumber() {
        return hashCode();
    }
}
