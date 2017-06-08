package javahostgraph.typegraph;

import com.google.common.collect.BiMap;
import com.google.common.collect.HashBiMap;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.net.URL;
import java.util.Collections;
import java.util.Set;

import static javahostgraph.AnnotationProcessor.FOLDER;
import static javahostgraph.AnnotationProcessor.TYPEGRAPH_FILE;

public class TypeGraph implements Serializable {

    private static TypeGraph graph = null;

    private final BiMap<String, TypeNode> nodes;

    public static TypeGraph getInstance() {
        if (graph == null) {
            graph = loadGraph();
        }
        return graph;
    }

    public static TypeGraph loadGraph() {
        URL url = TypeGraph.class.getClassLoader().getResource(FOLDER + "/" + TYPEGRAPH_FILE);
        if (url != null) {
            return loadGraph(url);
        } else {
            new IOException("Typegraph not found").printStackTrace();
            return new TypeGraph();
        }
    }

    private static TypeGraph loadGraph(URL url) {
        ObjectInputStream inputStream = null;
        try {
            inputStream = new ObjectInputStream(url.openStream());
            return (TypeGraph) inputStream.readObject();
        } catch (ClassCastException | ClassNotFoundException | IOException e) {
            e.printStackTrace();
            return new TypeGraph();
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

    public TypeGraph() {
        this.nodes = HashBiMap.create();
    }

    public boolean addNode(TypeNode node) {
        return nodes.put(node.getName(), node) == null;
    }

    public TypeNode getNode(Class<?> nodeClass) {
        return getNode(nodeClass.getCanonicalName());
    }

    public TypeNode getNode(String name) {
        if (!nodes.containsKey(name)) {
            throw new IllegalArgumentException(name + " is not a node");
        }
        return nodes.get(name);
    }

    public boolean removeNode(TypeNode node) {
        return nodes.inverse().remove(node) != null;
    }

    public Set<TypeNode> getNodes() {
        return Collections.unmodifiableSet(nodes.values());
    }

    @Override
    public String toString() {
        return getNodes().toString();
    }
}
