package test;

import groove.grammar.type.TypeGraph;
import groove.grammar.type.TypeLabel;
import groove.grammar.type.TypeNode;
import javagraph.TypeGraphLoader;
import javagraph.graph.JavaGraph;
import javagraph.graph.JavaNode;
import org.junit.Test;

import static org.junit.Assert.*;

public class GraphTest {

    @Test
    public void nodeTest() {
        JavaGraph graph = new JavaGraph();
        TypeGraph typeGraph = graph.getTypeGraph();
        TypeNode nodeExampleType = typeGraph.getNodeByName("NodeExample");

        assertNotNull(typeGraph);
        assertTrue(graph.visitNodes().isEmpty());
        assertTrue(graph.visitNode(nodeExampleType).isEmpty());

        JavaNode node1 = graph.createNode(nodeExampleType);
        assertNotNull(node1);
        assertEquals(graph.visitNodes().size(), 1);
        assertEquals(graph.visitNode(nodeExampleType).size(), 1);

        JavaNode node2 = graph.createNode(nodeExampleType);
        assertNotNull(node2);
        assertEquals(graph.visitNodes().size(), 2);
        assertEquals(graph.visitNode(nodeExampleType).size(), 2);

        assertTrue(node2.deleteNode());
        assertEquals(graph.visitNodes().size(), 1);
        assertEquals(graph.visitNode(nodeExampleType).size(), 1);

        assertTrue(node1.deleteNode());
        assertTrue(graph.visitNodes().isEmpty());
        assertTrue(graph.visitNode(nodeExampleType).isEmpty());

        assertFalse(node1.deleteNode());
    }

    @Test
    public void edgeTest() {
        JavaGraph graph = new JavaGraph();
        TypeGraph typeGraph = graph.getTypeGraph();
        TypeNode edgeExampleType = typeGraph.getNodeByName("EdgeExample");
        TypeNode nodeExampleType = typeGraph.getNodeByName("NodeExample");
        TypeNode anotherNodeExampleType = typeGraph.getNodeByName("AnotherNodeExample");
        TypeLabel labelExample = TypeLabel.createLabel("LabelExample");
        TypeLabel anotherLabelExample = TypeLabel.createLabel("AnotherLabelExample");

        assertNotNull(TypeGraphLoader.getInstance());
        assertTrue(graph.visitNodes().isEmpty());

        JavaNode sourceNode = graph.createNode(edgeExampleType);
        assertNotNull(sourceNode);
        JavaNode targetNode1 = graph.createNode(nodeExampleType);
        assertNotNull(targetNode1);
        JavaNode targetNode2 = graph.createNode(nodeExampleType);
        assertNotNull(targetNode2);
        JavaNode targetNode3 = graph.createNode(anotherNodeExampleType);
        assertNotNull(targetNode3);
        assertEquals(graph.visitNodes().size(), 4);
        assertEquals(graph.visitNode(edgeExampleType).size(), 1);
        assertEquals(graph.visitNode(nodeExampleType).size(), 2);
        assertEquals(graph.visitNode(anotherNodeExampleType).size(), 1);
        assertTrue(sourceNode.visitEdges().isEmpty());
        assertTrue(sourceNode.visitEdge(labelExample, nodeExampleType).isEmpty());
        assertTrue(sourceNode.visitEdge(anotherLabelExample, nodeExampleType).isEmpty());
        assertTrue(sourceNode.visitEdge(labelExample, anotherNodeExampleType).isEmpty());

        assertNotNull(sourceNode.createEdge(labelExample, targetNode1));
        assertEquals(sourceNode.visitEdges().size(), 1);
        assertEquals(sourceNode.visitEdge(labelExample, nodeExampleType).size(), 1);
        assertTrue(sourceNode.visitEdge(labelExample, anotherNodeExampleType).isEmpty());

        assertNotNull(sourceNode.createEdge(labelExample, targetNode2));
        assertEquals(sourceNode.visitEdges().size(), 2);
        assertEquals(sourceNode.visitEdge(labelExample, nodeExampleType).size(), 2);
        assertTrue(sourceNode.visitEdge(labelExample, anotherNodeExampleType).isEmpty());

        assertNotNull(sourceNode.createEdge(labelExample, targetNode3));
        assertEquals(sourceNode.visitEdges().size(), 3);
        assertEquals(sourceNode.visitEdge(labelExample, nodeExampleType).size(), 2);
        assertEquals(sourceNode.visitEdge(labelExample, anotherNodeExampleType).size(), 1);

        assertTrue(sourceNode.deleteEdge(labelExample, targetNode1));
        assertEquals(sourceNode.visitEdges().size(), 2);
        assertEquals(sourceNode.visitEdge(labelExample, nodeExampleType).size(), 1);
        assertEquals(sourceNode.visitEdge(labelExample, anotherNodeExampleType).size(), 1);

        assertTrue(sourceNode.deleteEdge(labelExample, targetNode3));
        assertEquals(sourceNode.visitEdges().size(), 1);
        assertEquals(sourceNode.visitEdge(labelExample, nodeExampleType).size(), 1);
        assertTrue(sourceNode.visitEdge(labelExample, anotherNodeExampleType).isEmpty());

        assertTrue(sourceNode.deleteEdge(labelExample, targetNode2));
        assertTrue(sourceNode.visitEdges().isEmpty());
        assertTrue(sourceNode.visitEdge(labelExample, nodeExampleType).isEmpty());
        assertTrue(sourceNode.visitEdge(labelExample, anotherNodeExampleType).isEmpty());

        assertFalse(sourceNode.deleteEdge(labelExample, targetNode1));

        assertTrue(sourceNode.deleteNode());
        assertTrue(targetNode1.deleteNode());
        assertTrue(targetNode2.deleteNode());
        assertTrue(targetNode3.deleteNode());
    }
}
