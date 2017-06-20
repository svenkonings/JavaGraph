package javagraph.graph;

import groove.grammar.AnchorKind;
import groove.grammar.host.HostNode;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeGraph;
import groove.grammar.type.TypeLabel;
import groove.grammar.type.TypeNode;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

public class Node implements HostNode {

    private final TypeNode typeNode;
    private final TypeGraph typeGraph;
    private final Object object;
    private final Class<?> objectClass;

    public Node(TypeNode type, Object nodeObject) {
        typeNode = type;
        typeGraph = typeNode.getGraph();
        object = nodeObject;
        objectClass = typeNode.getNodeClass();
    }

    public Object getObject() {
        return object;
    }

    public Class<?> getObjectClass() {
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

    public Edge createEdge(TypeLabel label, Node targetNode) {
        TypeEdge typeEdge = typeGraph.getTypeEdge(typeNode, label, targetNode.getType(), true);
        boolean created;
        try {
            Method createEdge = objectClass.getMethod(typeEdge.getEdgeCreate(), targetNode.getObjectClass());
            created = (boolean) createEdge.invoke(object, targetNode.getObject());
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new GraphException(e);
        }
        if (created) {
            return new Edge(this, typeEdge, targetNode);
        } else {
            return null;
        }
    }

    public boolean deleteEdge(TypeLabel label, Node targetNode) {
        TypeEdge typeEdge = typeGraph.getTypeEdge(typeNode, label, targetNode.getType(), true);
        boolean deleted;
        try {
            Method deleteEdge = objectClass.getMethod(typeEdge.getEdgeDelete(), targetNode.getObjectClass());
            deleted = (boolean) deleteEdge.invoke(object, targetNode.getObject());
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new GraphException(e);
        }
        return deleted;
    }

    public Set<Edge> visitEdge(TypeLabel label, TypeNode targetTypeNode) {
        TypeEdge typeEdge = typeGraph.getTypeEdge(typeNode, label, targetTypeNode, true);
        Set<?> targets;
        try {
            Method visitEdge = objectClass.getMethod(typeEdge.getEdgeVisit());
            targets = (Set<?>) visitEdge.invoke(object);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new GraphException(e);
        }
        return targets.stream()
                .map(target -> new Node(targetTypeNode, target))
                .map(target -> new Edge(this, typeEdge, target))
                .collect(Collectors.toSet());
    }

    public Set<Edge> visitEdges() {
        Set<Edge> edges = new HashSet<>();
        for (TypeEdge typeEdge : typeGraph.outEdgeSet(typeNode)) {
            Set<?> targets;
            try {
                Method visitEdge = objectClass.getMethod(typeEdge.getEdgeVisit());
                targets = (Set<?>) visitEdge.invoke(object);
            } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
                throw new GraphException(e);
            }
            targets.stream()
                    .map(target -> new Node(typeEdge.target(), target))
                    .map(target -> new Edge(this, typeEdge, target))
                    .forEach(edges::add);
        }
        return edges;
    }

    @Override
    public int hashCode() {
        int result = typeNode.hashCode();
        result = 31 * result + object.hashCode();
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        } else if (obj instanceof Node) {
            Node node = (Node) obj;
            return getType().equals(node.getType()) &&
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
