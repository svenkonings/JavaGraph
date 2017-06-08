package main;

import groove.grammar.Grammar;
import groove.grammar.GrammarProperties;
import groove.lts.GTS;
import groove.util.parse.FormatException;
import javahostgraph.graph.Graph;

public class Main {
    public static void main(String[] args) throws FormatException {
        Grammar grammar = new GraphGrammar();
        grammar.setProperties(new GrammarProperties());
        grammar.setStartGraph(Graph.getInstance());
        grammar.setFixed();
        GTS gts = new GTS(grammar);
    }
}
