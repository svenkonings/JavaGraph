package main;

import groove.grammar.Grammar;
import javagraph.graph.Graph;

import java.nio.file.Path;

public class GraphGrammar extends Grammar {
    public GraphGrammar() {
        setStartGraph(Graph.getInstance());
    }

    @Override
    public Path getLocation() {
        return null;
    }

    @Override
    public String getName() {
        return "javagraph";
    }
}
