package javagraph.graph;

import groove.algebra.AlgebraFamily;
import groove.grammar.host.HostEdge;
import groove.grammar.host.HostFactory;
import groove.grammar.host.HostGraph;
import groove.grammar.host.HostNode;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeGraph;
import groove.grammar.type.TypeLabel;
import groove.grammar.type.TypeNode;
import groove.graph.AGraph;
import groove.graph.GraphInfo;
import groove.graph.GraphRole;
import groove.graph.Label;
import groove.util.parse.FormatErrorSet;
import javagraph.TypeGraphLoader;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * {@link HostGraph} implementation for Java graphs.
 */
@SuppressWarnings({"SuspiciousMethodCalls", "MethodDoesntCallSuperMethod"})
public class JavaGraph implements HostGraph {

    private static JavaGraph graph = null;

    /**
     * @return the instance of this graph
     */
    public static JavaGraph getInstance() {
        if (graph == null) {
            graph = new JavaGraph();
        }
        return graph;
    }

    private final TypeGraph typeGraph;
    private final JavaGraphFactory graphFactory;
    private String name;
    private GraphInfo graphInfo;

    /**
     * Creates a new graph with the default name and type.
     *
     * @see TypeGraphLoader#getInstance()
     */
    public JavaGraph() {
        this("javagraph");
    }

    /**
     * Creates a new graph with the given name and the default type.
     *
     * @param graphName the given name
     * @see TypeGraphLoader#getInstance()
     */
    public JavaGraph(String graphName) {
        this(graphName, TypeGraphLoader.getInstance());
    }

    /**
     * Creates a new graph with the given type and the default name.
     *
     * @param type the given type
     */
    public JavaGraph(TypeGraph type) {
        this("javagraph", type);
    }

    /**
     * Creates a new graph with the given name and type.
     *
     * @param graphName the given name
     * @param type      the given type
     */
    public JavaGraph(String graphName, TypeGraph type) {
        name = graphName;
        typeGraph = type;
        graphFactory = new JavaGraphFactory(this);
    }

    @Override
    public TypeGraph getTypeGraph() {
        return typeGraph;
    }

    /**
     * Creates a new node instance of the given {@link TypeNode} by calling the associated node create method.
     *
     * @param typeNode the given {@link TypeNode}
     * @return the created node instance
     * @throws JavaGraphException if the {@link TypeNode} is not a Java type node or the method couldn't be called
     */
    public JavaNode createNode(TypeNode typeNode) throws JavaGraphException {
        if (!typeNode.isJavaNode()) {
            throw new JavaGraphException("Type node %s is not a Java type node", typeNode);
        }
        Object object;
        try {
            Method createNode = typeNode.getNodeClass().getMethod(typeNode.getNodeCreate());
            object = createNode.invoke(null);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new JavaGraphException(e);
        }
        return new JavaNode(typeNode, object);
    }

    /**
     * Visits the node instances of the given {@link TypeNode} by calling the associated node visit method.
     *
     * @param typeNode the given {@link TypeNode}
     * @return the set of node instances
     * @throws JavaGraphException if the {@link TypeNode} is not a Java type node or the method couldn't be called
     */
    public Set<JavaNode> visitNode(TypeNode typeNode) throws JavaGraphException {
        if (!typeNode.isJavaNode()) {
            throw new JavaGraphException("Type node %s is not a Java type node", typeNode);
        }
        Set<?> objects;
        try {
            Method visitNode = typeNode.getNodeClass().getMethod(typeNode.getNodeVisit());
            objects = (Set<?>) visitNode.invoke(null);
        } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new JavaGraphException(e);
        }
        return objects.stream()
                .map(object -> new JavaNode(typeNode, object))
                .collect(Collectors.toSet());
    }

    /**
     * Visits the node instances of all {@link TypeNode}s in this graph by calling the associated node visit methods.
     *
     * @return the set of node instances
     * @throws JavaGraphException if one of the methods couldn't be called
     */
    public Set<JavaNode> visitNodes() throws JavaGraphException {
        Set<JavaNode> nodes = new HashSet<>();
        for (TypeNode typeNode : typeGraph.nodeSet()) {
            if (!typeNode.isJavaNode()) {
                continue;
            }
            Set<?> objects;
            try {
                Method visitNode = typeNode.getNodeClass().getMethod(typeNode.getNodeVisit());
                objects = (Set<?>) visitNode.invoke(null);
            } catch (ClassCastException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
                throw new JavaGraphException(e);
            }
            objects.stream()
                    .map(object -> new JavaNode(typeNode, object))
                    .forEach(nodes::add);
        }
        return nodes;
    }

    /**
     * Visits the edge instances of the given {@link TypeEdge} by visiting the source node instances and calling the
     * edge visit methods of these instances with the label and target node type associated to the {@link TypeEdge}.
     *
     * @param typeEdge the given {@link TypeEdge}
     * @return the stream of edge instances
     * @throws JavaGraphException if one of the methods couldn't be called
     * @see JavaNode#visitEdge(TypeLabel, TypeNode)
     */
    public Stream<JavaEdge> visitEdge(TypeEdge typeEdge) throws JavaGraphException {
        return visitNode(typeEdge.source()).stream()
                .flatMap(node -> node.visitEdge(typeEdge.label(), typeEdge.target()).stream());
    }

    /**
     * Visits the edge instances of the given {@link TypeEdge}s.
     *
     * @param typeEdges the given collection of {@link TypeEdge}s
     * @return the stream of edge instances
     * @throws JavaGraphException if one of the methods couldn't be called
     * @see JavaGraph#visitEdge(TypeEdge)
     */
    public Stream<JavaEdge> visitEdges(Collection<? extends TypeEdge> typeEdges) throws JavaGraphException {
        return typeEdges.stream().flatMap(this::visitEdge);
    }

    /**
     * Visits all the outgoing edge instances of the given {@link TypeNode}s.
     *
     * @param typeNode the given {@link TypeNode}
     * @return the stream of edge instances
     * @throws JavaGraphException if one of the methods couldn't be called
     * @see JavaNode#visitEdges()
     */
    public Stream<JavaEdge> visitEdges(TypeNode typeNode) throws JavaGraphException {
        return visitNode(typeNode).stream().flatMap(node -> node.visitEdges().stream());
    }

    /**
     * Visits the edge instances of all {@link TypeNode}s in this graph.
     *
     * @return the stream of edge instances
     * @throws JavaGraphException if one of the methods couldn't be called
     * @see JavaGraph#visitEdges(TypeNode)
     */
    public Stream<JavaEdge> visitEdges() throws JavaGraphException {
        return visitNodes().stream().flatMap(node -> node.visitEdges().stream());
    }

    @Override
    public String toString() {
        return AGraph.toString(this);
    }

    @Override
    public Set<? extends HostNode> nodeSet() {
        return visitNodes();
    }

    @Override
    public Set<? extends HostEdge> edgeSet() {
        return visitEdges().collect(Collectors.toSet());
    }

    @Override
    public Set<? extends HostEdge> edgeSet(groove.graph.Node node) {
        Set<HostEdge> edgeSet = new HashSet<>();
        edgeSet.addAll(inEdgeSet(node));
        edgeSet.addAll(outEdgeSet(node));
        return edgeSet;
    }

    @Override
    public Set<? extends HostEdge> inEdgeSet(groove.graph.Node node) {
        if (node instanceof JavaNode) {
            return visitEdges(typeGraph.inEdgeSet(((JavaNode) node).getType()))
                    .filter(edge -> edge.getTarget().equals(node))
                    .collect(Collectors.toSet());
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public Set<? extends HostEdge> outEdgeSet(groove.graph.Node node) {
        if (node instanceof JavaNode) {
            return ((JavaNode) node).visitEdges();
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public Set<? extends HostEdge> edgeSet(Label label) {
        return visitEdges(typeGraph.edgeSet(label)).collect(Collectors.toSet());
    }

    @Override
    public boolean isFixed() {
        return true;
    }

    @Override
    public boolean containsNode(groove.graph.Node node) {
        return nodeSet().contains(node);
    }

    @Override
    public boolean containsEdge(groove.graph.Edge edge) {
        return edgeSet().contains(edge);
    }

    @Override
    public boolean setFixed() {
        return true;
    }

    @Override
    public boolean hasInfo() {
        return graphInfo != null;
    }

    @Override
    public GraphInfo getInfo() {
        if (graphInfo == null) {
            graphInfo = new GraphInfo();
        }
        return graphInfo;
    }

    @Override
    public HostGraph newGraph(String name) {
        return new JavaGraph(name, typeGraph);
    }

    @Override
    public void setName(String newName) {
        name = newName;
    }

    @Override
    public HostNode addNode() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addNode(HostNode node) {
        return false;
    }

    @Override
    public boolean addEdge(HostEdge hostEdge) {
        if (hostEdge instanceof JavaEdge) {
            JavaEdge edge = (JavaEdge) hostEdge;
            return edge.getSource().createEdge(edge.label(), edge.getTarget()) != null;
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public boolean removeEdge(HostEdge edge) {
        if (edge instanceof JavaEdge) {
            return ((JavaEdge) edge).deleteEdge();
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public boolean removeNode(HostNode node) {
        if (node instanceof JavaNode) {
            return ((JavaNode) node).deleteNode();
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public HostGraph clone() {
        return this;
    }

    @Override
    public HostGraph clone(AlgebraFamily family) {
        return this;
    }

    @Override
    public HostFactory getFactory() {
        return graphFactory;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public GraphRole getRole() {
        return GraphRole.HOST;
    }

    @Override
    public FormatErrorSet checkTypeConstraints() {
        return getTypeGraph().check(this);
    }
}
