package javagraph;

import groove.grammar.QualName;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeGraph;
import groove.grammar.type.TypeLabel;
import groove.grammar.type.TypeNode;
import groove.graph.EdgeRole;
import groove.graph.Label;
import groove.io.graph.GxlIO;
import javagraph.classgraph.ClassGraph;

import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.net.URL;

/**
 * Creates a GROOVE {@link TypeGraph} based on the {@link ClassGraph} created by the annotation processor.
 */
public class TypeGraphLoader {

    /** The package folder in which the {@link ClassGraph} is stored. **/
    public static final String FOLDER = "javagraph";

    /** The filename of the {@link ClassGraph} **/
    public static final String TYPEGRAPH_FILE = "TypeGraph.obj";

    private static TypeGraph graph = null;

    /**
     * Save the {@link TypeGraph} instance to the given file.
     *
     * @param filename the given file
     * @throws IOException if the {@link TypeGraph} couldn't be saved
     */
    public static void saveGraph(String filename) throws IOException {
        saveGraph(filename, getInstance());
    }

    /**
     * Save the given {@link TypeGraph} to the given file.
     *
     * @param filename  the given file
     * @param typeGraph the given typegraph
     * @throws IOException if the {@link TypeGraph} couldn't be saved
     */
    public static void saveGraph(String filename, TypeGraph typeGraph) throws IOException {
        GxlIO.instance().saveGraph(typeGraph, new File(filename + ".gty"));
    }

    /**
     * @return the {@link TypeGraph} instance
     */
    public static TypeGraph getInstance() {
        if (graph == null) {
            graph = loadGraph(FOLDER);
        }
        return graph;
    }

    /**
     * Create a {@link TypeGraph} with the given name based on the loaded {@link ClassGraph}
     *
     * @param name the given name
     * @return the created {@link TypeGraph}
     */
    public static TypeGraph loadGraph(String name) {
        ClassGraph classGraph = loadClassGraph();
        TypeGraph typeGraph = new TypeGraph(QualName.name(name));
        classGraph.getNodes().forEach(node -> {
            TypeNode typeNode = typeGraph.addNode(TypeLabel.createLabel(EdgeRole.NODE_TYPE, node.getNodeName()));
            typeNode.setNodeClassName(node.getClassName());
            typeNode.setNodeVisit(node.getNodeVisit());
            typeNode.setNodeCreate(node.getNodeCreate());
            typeNode.setNodeDelete(node.getNodeDelete());
        });
        classGraph.getNodes().stream().flatMap(classNode -> classNode.getEdges().stream()).forEach(edge -> {
            TypeNode sourceNode = typeGraph.getNodeByName(edge.getSource());
            Label label = TypeLabel.createLabel(edge.getLabel());
            TypeNode targetNode = typeGraph.getNodeByName(edge.getTarget());
            TypeEdge typeEdge = typeGraph.addEdge(sourceNode, label, targetNode);
            typeEdge.setEdgeVisit(edge.getEdgeVisit());
            typeEdge.setEdgeCreate(edge.getEdgeCreate());
            typeEdge.setEdgeDelete(edge.getEdgeDelete());
        });
        typeGraph.setFixed();
        return typeGraph;
    }

    /**
     * Load the {@link ClassGraph} on the default location.
     *
     * @return the loaded {@link ClassGraph}
     */
    private static ClassGraph loadClassGraph() {
        URL url = TypeGraphLoader.class.getClassLoader().getResource(FOLDER + "/" + TYPEGRAPH_FILE);
        if (url != null) {
            return loadClassGraph(url);
        } else {
            new IOException("Typegraph not found").printStackTrace();
            return new ClassGraph();
        }
    }

    /**
     * Load the {@link ClassGraph} from the given {@link URL}.
     *
     * @param url the given {@link URL}
     * @return the loaded {@link ClassGraph}
     */
    private static ClassGraph loadClassGraph(URL url) {
        ObjectInputStream inputStream = null;
        try {
            inputStream = new ObjectInputStream(url.openStream());
            return (ClassGraph) inputStream.readObject();
        } catch (ClassCastException | ClassNotFoundException | IOException e) {
            e.printStackTrace();
            return new ClassGraph();
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
