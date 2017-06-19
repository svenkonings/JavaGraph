package javagraph;

import groove.grammar.Grammar;
import groove.grammar.QualName;
import groove.grammar.Rule;
import groove.grammar.host.HostEdge;
import groove.grammar.host.HostGraph;
import groove.grammar.host.HostNode;
import groove.grammar.model.GrammarModel;
import groove.io.store.SystemStore;
import groove.transform.Proof;
import groove.transform.Record;
import groove.transform.RuleApplication;
import groove.transform.RuleEvent;
import groove.util.parse.FormatException;
import javagraph.graph.Graph;
import javagraph.graph.Node;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class JavaGraph {

    private final Grammar grammar;

    public JavaGraph(String grooveFilePath) throws IOException, FormatException {
        this(load(new File(grooveFilePath)));
    }

    public JavaGraph(File grooveFile) throws IOException, FormatException {
        this(load(grooveFile));
    }

    public JavaGraph(Grammar grooveGrammar) throws FormatException {
        grammar = new Grammar();
        grammar.setProperties(grooveGrammar.getProperties());
        grammar.setTypeGraph(TypeGraphLoader.getInstance());
        grammar.setControl(grooveGrammar.getControl());
        grammar.setPrologEnvironment(grooveGrammar.getPrologEnvironment());

        Graph graph = Graph.getInstance();
        initGraph(graph, grooveGrammar.getStartGraph());
        grammar.setStartGraph(graph);
        grooveGrammar.getActions().forEach(grammar::add);
        grammar.setFixed();
    }

    public Proof findMatch(String ruleName) {
        Rule rule = grammar.getRule(QualName.name(ruleName));
        return rule.getMatch(grammar.getStartGraph(), null);
    }

    public Collection<Proof> findMatches(String ruleName) {
        Rule rule = grammar.getRule(QualName.name(ruleName));
        return rule.getAllMatches(grammar.getStartGraph(), null);
    }

    public void applyMatch(String ruleName) {
        applyMatch(findMatch(ruleName));
    }

    public void applyMatches(String ruleName) {
        applyMatches(findMatches(ruleName));
    }

    public void applyMatch(Proof proof) {
        Record record = new Record(grammar, grammar.getStartGraph().getFactory());
        RuleEvent event = proof.newEvent(record);
        RuleApplication application = new RuleApplication(event, grammar.getStartGraph());
        application.getTarget();
    }

    public void applyMatches(Collection<Proof> proofs) {
        proofs.forEach(this::applyMatch);
    }

    private static void initGraph(Graph graph, HostGraph startGraph) {
        Map<HostNode, Node> nodeMapping = new HashMap<>();
        for (HostNode grooveNode : startGraph.nodeSet()) {
            Node node = graph.createNode(grooveNode.getType());
            nodeMapping.put(grooveNode, node);
        }
        for (HostEdge edge : startGraph.edgeSet()) {
            nodeMapping.get(edge.source()).createEdge(edge.label(), nodeMapping.get(edge.target()));
        }
    }

    private static Grammar load(File file) throws IOException, FormatException {
        SystemStore systemStore = SystemStore.newStore(file, false);
        systemStore.reload();
        GrammarModel grammarModel = systemStore.toGrammarModel();
        return grammarModel.toGrammar();
    }
}
