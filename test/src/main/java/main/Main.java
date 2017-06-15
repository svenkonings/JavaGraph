package main;

import example.AnotherNodeExample;
import example.EdgeExample;
import example.NodeExample;
import groove.grammar.Condition;
import groove.grammar.Grammar;
import groove.grammar.GrammarProperties;
import groove.grammar.Rule;
import groove.grammar.host.HostFactory;
import groove.grammar.rule.RuleFactory;
import groove.grammar.rule.RuleGraph;
import groove.grammar.rule.RuleNode;
import groove.grammar.rule.RuleToHostMap;
import groove.grammar.type.TypeFactory;
import groove.transform.Proof;
import groove.transform.Record;
import groove.transform.RuleApplication;
import groove.transform.RuleEvent;
import groove.util.parse.FormatException;
import javagraph.graph.Graph;
import javagraph.graph.Node;

import java.util.Collections;

public class Main {
    public static void main(String[] args) throws FormatException {
        Grammar grammar = new Grammar();

        GrammarProperties properties = new GrammarProperties();
        properties.setFixed();
        grammar.setProperties(properties);

        Graph graph = Graph.getInstance();
        Node<EdgeExample> edgeExampleNode = graph.createNode(EdgeExample.class);
        Node<NodeExample> nodeExampleNode = graph.createNode(NodeExample.class);
        edgeExampleNode.createEdge(nodeExampleNode);
        graph.setFixed();
        grammar.setStartGraph(graph);

        RuleFactory ruleFactory = RuleFactory.newInstance(graph.getTypeGraph().getFactory());
        RuleGraph lhs = new RuleGraph("lhs", false, ruleFactory);
        RuleNode source = ruleFactory.nodes(graph.getTypeGraph().getNodeByClass(EdgeExample.class), true, Collections.emptyList()).createNode();
        lhs.addNode(source);
        RuleNode target = ruleFactory.nodes(graph.getTypeGraph().getNodeByClass(NodeExample.class), true, Collections.emptyList()).createNode();
        lhs.addNode(target);
        lhs.addEdge(source, "", target);
        lhs.setFixed();
        RuleGraph rhs = new RuleGraph("rhs", false, ruleFactory);
        RuleNode newNode = ruleFactory.nodes(graph.getTypeGraph().getNodeByClass(AnotherNodeExample.class), true, Collections.emptyList()).createNode();
        rhs.addNode(newNode);
        rhs.setFixed();

        Condition condition = new Condition("test", Condition.Op.EXISTS, lhs, null, properties);
        Rule rule = new Rule(condition, rhs, null);
        rule.setFixed();
        condition.setRule(rule);
        condition.setFixed();

        grammar.add(rule);
        grammar.setFixed();

        HostFactory hostFactory = graph.getFactory();
        Proof proof = rule.getMatch(graph, null);
        Record record = new Record(grammar, hostFactory);
        RuleEvent event = proof.newEvent(record);
        RuleApplication application = new RuleApplication(event, graph);

        System.out.println(application.getSource());
        System.out.println(application.getTarget());
    }
}
