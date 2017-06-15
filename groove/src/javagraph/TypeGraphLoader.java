package javagraph;

import groove.grammar.QualName;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeGraph;
import groove.grammar.type.TypeLabel;
import groove.grammar.type.TypeNode;
import groove.graph.EdgeRole;
import groove.graph.Label;
import javagraph.classgraph.ClassGraph;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.net.URL;

public class TypeGraphLoader {

    public static final String FOLDER = "javagraph";
    public static final String PACKAGE = "javagraph.annotations.";
    public static final String TYPEGRAPH_FILE = "TypeGraph.obj";

    private static TypeGraph graph = null;

    public static TypeGraph getInstance() {
        if (graph == null) {
            graph = loadGraph();
        }
        return graph;
    }

    public static TypeGraph loadGraph() {
        ClassGraph classGraph = loadClassGraph();
        TypeGraph typeGraph = new TypeGraph(QualName.name(FOLDER));
//        TypeNode topNode = typeGraph.getFactory().getTopNode();
//        topNode.setAbstract(true);
//        TypeEdge topEdge = typeGraph.addEdge(topNode, "", topNode);
//        topEdge.setAbstract(true);
        classGraph.getNodes().forEach(node -> {
            TypeNode typeNode = typeGraph.addNode(TypeLabel.createLabel(EdgeRole.NODE_TYPE, node.getName()));
//            try {
//                typeGraph.addInheritance(typeNode, topNode);
//            } catch (FormatException e) {
//                e.printStackTrace();
//            }
            typeNode.setNodeVisit(node.getNodeVisit());
            typeNode.setNodeCreate(node.getNodeCreate());
            typeNode.setNodeDelete(node.getNodeDelete());
        });
        classGraph.getNodes().stream().flatMap(classNode -> classNode.getEdges().stream()).forEach(edge -> {
            TypeNode sourceNode = typeGraph.getNodeByName(edge.getSource());
            Label label = TypeLabel.createLabel(EdgeRole.BINARY, edge.getLabel());
            TypeNode targetNode = typeGraph.getNodeByName(edge.getTarget());
            TypeEdge typeEdge = typeGraph.addEdge(sourceNode, label, targetNode);
            typeEdge.setEdgeVisit(edge.getEdgeVisit());
            typeEdge.setEdgeCreate(edge.getEdgeCreate());
            typeEdge.setEdgeDelete(edge.getEdgeDelete());
        });
        typeGraph.setFixed();
        return typeGraph;
    }

    private static ClassGraph loadClassGraph() {
        URL url = TypeGraphLoader.class.getClassLoader().getResource(FOLDER + "/" + TYPEGRAPH_FILE);
        if (url != null) {
            return loadClassGraph(url);
        } else {
            new IOException("Typegraph not found").printStackTrace();
            return new ClassGraph();
        }
    }

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
