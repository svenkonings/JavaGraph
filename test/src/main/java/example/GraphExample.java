package example;

import javahostgraph.graph.Graph;
import javahostgraph.graph.Node;
import javahostgraph.typegraph.TypeGraph;

public class GraphExample {
    public static void main(String[] args) {
        Graph graph = new Graph();
        nodeExample(graph);
        edgeExample(graph);
    }

    public static void nodeExample(Graph graph) {
        System.out.println("TypeGraph=" + TypeGraph.getInstance());
        System.out.println("Nodes=" + graph.visitNodes());

        Node<NodeExample> node = graph.createNode(NodeExample.class);
        System.out.println("CreateNode(NodeExample)=" + node);
        System.out.println("Nodes=" + graph.visitNodes());

        System.out.println("DeleteNode(NodeExamlpe)=" + node.deleteNode());
        System.out.println("Nodes=" + graph.visitNodes());
        System.out.println();
    }

    public static void edgeExample(Graph graph) {
        System.out.println("TypeGraph=" + TypeGraph.getInstance());
        System.out.println("Nodes=" + graph.visitNodes());

        Node<EdgeExample> sourceNode = graph.createNode(EdgeExample.class);
        Node<NodeExample> targetNode1 = graph.createNode(NodeExample.class);
        Node<AnotherNodeExample> targetNode2 = graph.createNode(AnotherNodeExample.class);
        System.out.println("CreateNode(EdgeExample)=" + sourceNode);
        System.out.println("CreateNode(NodeExample)=" + targetNode1);
        System.out.println("CreateNode(AnotherNodeExample)=" + targetNode2);
        System.out.println("Nodes=" + graph.visitNodes());
        System.out.println("Nodes(EdgeExample)=" + graph.visitNode(EdgeExample.class));

        System.out.println("CreateEdge(EdgeExample, NodeExample)=" + sourceNode.createEdge(targetNode1));
        System.out.println("CreateEdge(EdgeExample, AnotherNodeExample)=" + sourceNode.createEdge(targetNode2));
        System.out.println("VisitEdge(EdgeExample,NodeExample)=" + sourceNode.visitEdge(NodeExample.class));
        System.out.println("VisitEdges(EdgeExample)=" + sourceNode.visitEdges());

        System.out.println("DeleteEdge(EdgeExample, NodeExample)=" + sourceNode.deleteEdge(targetNode1));
        System.out.println("VisitEdges(EdgeExample)=" + sourceNode.visitEdges());
        System.out.println();
    }
}
