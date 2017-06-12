package main;

import groove.explore.Exploration;
import groove.explore.ExploreType;
import groove.grammar.Grammar;
import groove.grammar.GrammarProperties;
import groove.lts.GTS;
import groove.util.Properties;
import groove.util.parse.FormatException;
import javagraph.graph.Graph;

public class Main {
    public static void main(String[] args) throws FormatException {
        Grammar grammar = new GraphGrammar();

        Properties properties = new GrammarProperties();
        grammar.setProperties(properties);

        Graph graph = Graph.getInstance();
        graph.setFixed();
        grammar.setStartGraph(graph);

//        Program program = new Program();
//        program.setFixed();
//        Automaton automaton = new Automaton(program);
//        grammar.setControl(automaton);

        grammar.setFixed();
        GTS gts = new GTS(grammar);

        ExploreType exploreType = new ExploreType("linear", "final", 1);
        Exploration exploration = new Exploration(exploreType, gts.startState());
        exploration.play();

//        SimulatorModel simulatorModel = new SimulatorModel();
    }
}
