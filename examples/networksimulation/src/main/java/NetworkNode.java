import groove.util.parse.FormatException;
import javagraph.JavaMatcher;
import javagraph.annotations.*;
import javagraph.graph.JavaGraphException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;

@Node("networkNode")
public class NetworkNode {
    private static final Set<NetworkNode> nodes = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

    private final Set<NetworkNode> edges;

    public static void main(String[] args) throws IOException, FormatException {
        // Load the Java graph
        JavaMatcher matcher = new JavaMatcher("examples/networksimulation/network.gps");
        // Create a new thread:
        new Thread(() -> {
            Random random = new Random();
            while (!Thread.interrupted()) {
                // Every 10 seconds
                try {
                    Thread.sleep(10000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                // For every pair of nodes
                nodes.forEach(node1 -> nodes.forEach(node2 -> {
                    // There is a 10% chance
                    int rng = random.nextInt(10);
                    if (rng == 1) {
                        // The thread will change whether there is an edge between this pair
                        // It will create a new edge or remove an existing edge
                        Set<NetworkNode> edges = node1.getNetworkNodeEdges();
                        if (edges.contains(node2)) {
                            System.out.printf("Removing edge from %s to %s%n", node1, node2);
                            node1.removeNetworkNodeEdge(node2);
                        } else {
                            System.out.printf("Adding edge from %s to %s%n", node1, node2);
                            node1.addNetworkNodeEdge(node2);
                        }
                    }
                }));
            }
        }).start();
        // Print the current graph
        System.out.println(matcher.getGraph());
        // Read the input
        BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
        String line;
        while ((line = in.readLine()) != null) {
            // Try to apply the rule specified in the input
            try {
                matcher.applyMatch(line);
            } catch (JavaGraphException e) {
                System.out.println(e.getMessage());
            }
            // Print the current graph
            System.out.println(matcher.getGraph());
        }
    }

    public NetworkNode() {
        nodes.add(this);
        edges = Collections.synchronizedSet(new HashSet<>());
    }

    @NodeCreate
    public static NetworkNode getNode() {
        return new NetworkNode();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<NetworkNode> visitNode() {
        return Collections.unmodifiableSet(nodes);
    }

    @EdgeCreate("edge")
    public boolean addNetworkNodeEdge(NetworkNode networkNode) {
        return edges.add(networkNode);
    }

    @EdgeDelete("edge")
    public boolean removeNetworkNodeEdge(NetworkNode networkNode) {
        return edges.remove(networkNode);
    }

    @EdgeVisit("edge")
    public Set<NetworkNode> getNetworkNodeEdges() {
        return Collections.unmodifiableSet(edges);
    }
}
