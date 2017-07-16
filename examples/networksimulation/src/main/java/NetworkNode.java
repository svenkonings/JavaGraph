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
        new Thread(() -> {
            Random random = new Random();
            while (!Thread.interrupted()) {
                try {
                    Thread.sleep(10000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                nodes.forEach(node1 -> nodes.forEach(node2 -> {
                    int rng = random.nextInt(10);
                    if (rng == 1) {
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
        JavaMatcher javagraph = new JavaMatcher("examples/networksimulation/network.gps");
        BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
        String line;
        System.out.println(javagraph.getGraph());
        while ((line = in.readLine()) != null) {
            try {
                javagraph.applyMatch(line);
            } catch (JavaGraphException e) {
                System.out.println(e.getMessage());
            }
            System.out.println(javagraph.getGraph());
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
