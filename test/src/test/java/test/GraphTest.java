package test;

import example.AnotherNodeExample;
import example.EdgeExample;
import example.NodeExample;
import javagraph.graph.Graph;
import javagraph.graph.Node;
import javagraph.typegraph.TypeGraph;
import org.junit.Test;

import static org.junit.Assert.*;

public class GraphTest {

    @Test
    public void nodeTest() {
        Graph graph = new Graph();
        assertNotNull(TypeGraph.getInstance());
        assertTrue(graph.visitNodes().isEmpty());
        assertTrue(graph.visitNode(NodeExample.class).isEmpty());

        Node<NodeExample> node1 = graph.createNode(NodeExample.class);
        assertNotNull(node1);
        assertEquals(graph.visitNodes().size(), 1);
        assertEquals(graph.visitNode(NodeExample.class).size(), 1);

        Node<NodeExample> node2 = graph.createNode(NodeExample.class);
        assertNotNull(node2);
        assertEquals(graph.visitNodes().size(), 2);
        assertEquals(graph.visitNode(NodeExample.class).size(), 2);

        assertTrue(node2.deleteNode());
        assertEquals(graph.visitNodes().size(), 1);
        assertEquals(graph.visitNode(NodeExample.class).size(), 1);

        assertTrue(node1.deleteNode());
        assertTrue(graph.visitNodes().isEmpty());
        assertTrue(graph.visitNode(NodeExample.class).isEmpty());

        assertFalse(node1.deleteNode());
    }

    @Test
    public void edgeTest() {
        Graph graph = new Graph();
        assertNotNull(TypeGraph.getInstance());
        assertTrue(graph.visitNodes().isEmpty());

        Node<EdgeExample> sourceNode = graph.createNode(EdgeExample.class);
        assertNotNull(sourceNode);
        Node<NodeExample> targetNode1 = graph.createNode(NodeExample.class);
        assertNotNull(targetNode1);
        Node<NodeExample> targetNode2 = graph.createNode(NodeExample.class);
        assertNotNull(targetNode2);
        Node<AnotherNodeExample> targetNode3 = graph.createNode(AnotherNodeExample.class);
        assertNotNull(targetNode3);
        assertEquals(graph.visitNodes().size(), 4);
        assertEquals(graph.visitNode(EdgeExample.class).size(), 1);
        assertEquals(graph.visitNode(NodeExample.class).size(), 2);
        assertEquals(graph.visitNode(AnotherNodeExample.class).size(), 1);
        assertTrue(sourceNode.visitEdges().isEmpty());
        assertTrue(sourceNode.visitEdge(NodeExample.class).isEmpty());
        assertTrue(sourceNode.visitEdge(AnotherNodeExample.class).isEmpty());

        assertNotNull(sourceNode.createEdge(targetNode1));
        assertEquals(sourceNode.visitEdges().size(), 1);
        assertEquals(sourceNode.visitEdge(NodeExample.class).size(), 1);
        assertTrue(sourceNode.visitEdge(AnotherNodeExample.class).isEmpty());

        assertNotNull(sourceNode.createEdge(targetNode2));
        assertEquals(sourceNode.visitEdges().size(), 2);
        assertEquals(sourceNode.visitEdge(NodeExample.class).size(), 2);
        assertTrue(sourceNode.visitEdge(AnotherNodeExample.class).isEmpty());

        assertNotNull(sourceNode.createEdge(targetNode3));
        assertEquals(sourceNode.visitEdges().size(), 3);
        assertEquals(sourceNode.visitEdge(NodeExample.class).size(), 2);
        assertEquals(sourceNode.visitEdge(AnotherNodeExample.class).size(), 1);

        assertTrue(sourceNode.deleteEdge(targetNode1));
        assertEquals(sourceNode.visitEdges().size(), 2);
        assertEquals(sourceNode.visitEdge(NodeExample.class).size(), 1);
        assertEquals(sourceNode.visitEdge(AnotherNodeExample.class).size(), 1);

        assertTrue(sourceNode.deleteEdge(targetNode3));
        assertEquals(sourceNode.visitEdges().size(), 1);
        assertEquals(sourceNode.visitEdge(NodeExample.class).size(), 1);
        assertTrue(sourceNode.visitEdge(AnotherNodeExample.class).isEmpty());

        assertTrue(sourceNode.deleteEdge(targetNode2));
        assertTrue(sourceNode.visitEdges().isEmpty());
        assertTrue(sourceNode.visitEdge(NodeExample.class).isEmpty());
        assertTrue(sourceNode.visitEdge(AnotherNodeExample.class).isEmpty());

        assertFalse(sourceNode.deleteEdge(targetNode1));

        assertTrue(sourceNode.deleteNode());
        assertTrue(targetNode1.deleteNode());
        assertTrue(targetNode2.deleteNode());
        assertTrue(targetNode3.deleteNode());
    }
}
