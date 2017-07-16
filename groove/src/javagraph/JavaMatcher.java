package javagraph;

import groove.grammar.Grammar;
import groove.grammar.QualName;
import groove.grammar.Rule;
import groove.grammar.host.HostEdge;
import groove.grammar.host.HostGraph;
import groove.grammar.host.HostNode;
import groove.grammar.model.GrammarModel;
import groove.grammar.type.TypeEdge;
import groove.grammar.type.TypeGraph;
import groove.grammar.type.TypeNode;
import groove.io.store.SystemStore;
import groove.transform.Proof;
import groove.transform.Record;
import groove.transform.RuleApplication;
import groove.transform.RuleEvent;
import groove.util.parse.FormatException;
import javagraph.graph.JavaGraph;
import javagraph.graph.JavaGraphException;
import javagraph.graph.JavaNode;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

public class JavaMatcher {

    private final Grammar grammar;
    private final JavaGraph graph;

    public JavaMatcher(String grooveFilePath) throws IOException, FormatException {
        this(new File(grooveFilePath));
    }

    public JavaMatcher(File grooveFile) throws IOException, FormatException {
        this(load(grooveFile));
    }

    public JavaMatcher(Grammar grooveGrammar) throws FormatException {
        grammar = new Grammar();
        grammar.setProperties(grooveGrammar.getProperties());
        grammar.setControl(grooveGrammar.getControl());
        grammar.setPrologEnvironment(grooveGrammar.getPrologEnvironment());

        TypeGraph typeGraph = grooveGrammar.getTypeGraph();
        initTypeGraph(typeGraph, TypeGraphLoader.getInstance());
        grammar.setTypeGraph(typeGraph);

        graph = new JavaGraph(typeGraph);
        initGraph(graph, grooveGrammar.getStartGraph());
        grammar.setStartGraph(graph);

        grooveGrammar.getActions().forEach(grammar::add);
        grammar.setFixed();
    }

    public Grammar getGrammar() {
        return grammar;
    }

    public JavaGraph getGraph() {
        return graph;
    }

    public Proof findMatch(String ruleName) {
        return getRule(ruleName).getMatch(graph, null);
    }

    public Collection<Proof> findMatches(String ruleName) {
        return getRule(ruleName).getAllMatches(graph, null);
    }

    public Rule getRule(String ruleName) {
        Rule rule = grammar.getRule(QualName.name(ruleName));
        if (rule == null) {
            throw new JavaGraphException("Rule not found");
        }
        return rule;
    }

    public Set<Rule> getRules() {
        return grammar.getAllRules();
    }

    public Set<QualName> getRuleNames() {
        return getRules().stream().map(Rule::getQualName).collect(Collectors.toSet());
    }

    public void applyMatch(String ruleName) {
        Proof proof = findMatch(ruleName);
        if (proof == null) {
            throw new JavaGraphException("No match found");
        }
        applyMatch(proof);
    }

    public void applyMatch(Proof proof) {
        Record record = new Record(grammar, graph.getFactory());
        RuleEvent event = proof.newEvent(record);
        RuleApplication application = new RuleApplication(event, graph);
        application.getTarget();
    }

    public void explore() {
        boolean found = true;
        while (found) {
            found = false;
            for (Rule rule : getRules()) {
                Proof match = rule.getMatch(graph, null);
                if (match != null) {
                    found = true;
                    applyMatch(match);
                }
            }
        }
    }

    private static void initTypeGraph(TypeGraph typeGraph, TypeGraph javaTypeGraph) {
        for (TypeNode javaNode : javaTypeGraph.nodeSet()) {
            if (!javaNode.isJavaNode()) {
                continue;
            }
            TypeNode node = typeGraph.getNode(javaNode.label());
            if (node == null) {
                throw new JavaGraphException("Missing node %s in Groove TypeGraph", javaNode);
            }
            node.setNodeClassName(javaNode.getNodeClassName());
            node.setNodeVisit(javaNode.getNodeVisit());
            node.setNodeCreate(javaNode.getNodeCreate());
            node.setNodeDelete(javaNode.getNodeDelete());
        }
        for (TypeEdge javaEdge : javaTypeGraph.edgeSet()) {
            if (!javaEdge.isJavaEdge()) {
                continue;
            }
            TypeNode source = typeGraph.getNode(javaEdge.source().label());
            TypeNode target = typeGraph.getNode(javaEdge.target().label());
            TypeEdge edge = typeGraph.getTypeEdge(source, javaEdge.label(), target, true);
            if (edge == null) {
                throw new JavaGraphException("Missing edge %s in Groove TypeGraph", javaEdge);
            }
            edge.setEdgeVisit(javaEdge.getEdgeVisit());
            edge.setEdgeCreate(javaEdge.getEdgeCreate());
            edge.setEdgeDelete(javaEdge.getEdgeDelete());
        }
    }

    private static void initGraph(JavaGraph graph, HostGraph startGraph) {
        Map<HostNode, JavaNode> nodeMapping = new HashMap<>();
        for (HostNode grooveNode : startGraph.nodeSet()) {
            TypeNode type = grooveNode.getType();
            if (!type.isJavaNode()) {
                throw new JavaGraphException("Node %s is not a Java node", grooveNode);
            }
            JavaNode node = graph.createNode(type);
            nodeMapping.put(grooveNode, node);
        }
        for (HostEdge grooveEdge : startGraph.edgeSet()) {
            if (!grooveEdge.getType().isJavaEdge()) {
                throw new JavaGraphException("Edge %s is not a Java edge", grooveEdge);
            }
            nodeMapping.get(grooveEdge.source()).createEdge(grooveEdge.label(), nodeMapping.get(grooveEdge.target()));
        }
    }

    private static Grammar load(File file) throws IOException, FormatException {
        if (!file.isDirectory()) {
            throw new FileNotFoundException("Grammar directory not found: " + file.getAbsolutePath());
        }
        SystemStore systemStore = SystemStore.newStore(file, false);
        systemStore.reload();
        GrammarModel grammarModel = systemStore.toGrammarModel();
        return grammarModel.toGrammar();
    }
}
