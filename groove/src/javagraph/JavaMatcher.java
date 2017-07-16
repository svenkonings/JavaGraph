package javagraph;

import groove.grammar.Grammar;
import groove.grammar.QualName;
import groove.grammar.Rule;
import groove.grammar.host.HostEdge;
import groove.grammar.host.HostGraph;
import groove.grammar.host.HostNode;
import groove.grammar.model.GrammarModel;
import groove.grammar.rule.RuleToHostMap;
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

/**
 * Class for finding and applying matches to Java graphs.
 */
public class JavaMatcher {

    private final Grammar grammar;
    private final JavaGraph graph;

    /**
     * Creates a new matcher with the {@link Grammar} loaded from the given path.
     *
     * @param grammarPath the given path
     * @throws IOException     if the {@link Grammar} couldn't be loaded
     * @throws FormatException if the {@link Grammar} is formatted incorrectly
     */
    public JavaMatcher(String grammarPath) throws IOException, FormatException {
        this(new File(grammarPath));
    }

    /**
     * Creates a new matcher with the {@link Grammar} loaded from the given {@link File}.
     *
     * @param grammarFile the given {@link File}
     * @throws IOException     if the {@link Grammar} couldn't be loaded
     * @throws FormatException if the {@link Grammar} is formatted incorrectly
     */
    public JavaMatcher(File grammarFile) throws IOException, FormatException {
        this(load(grammarFile));
    }

    /**
     * Creates a new matcher with the given {@link Grammar}
     *
     * @param grooveGrammar the given {@link Grammar}
     * @throws FormatException if the {@link Grammar} is formatted incorrectly
     */
    public JavaMatcher(Grammar grooveGrammar) throws FormatException {
        grammar = new Grammar();
        grammar.setProperties(grooveGrammar.getProperties());
        grammar.setControl(grooveGrammar.getControl());
        grammar.setPrologEnvironment(grooveGrammar.getPrologEnvironment());

        TypeGraph typeGraph = grooveGrammar.getTypeGraph();
        copyJavaTypeGraph(typeGraph, TypeGraphLoader.getInstance());
        grammar.setTypeGraph(typeGraph);

        graph = new JavaGraph(typeGraph);
        initGraph(graph, grooveGrammar.getStartGraph());
        grammar.setStartGraph(graph);

        grooveGrammar.getActions().forEach(grammar::add);
        grammar.setFixed();
    }

    /**
     * @return the {@link Grammar} associated with this matcher
     */
    public Grammar getGrammar() {
        return grammar;
    }

    /**
     * @return the {@link JavaGraph} associated with this matcher
     */
    public JavaGraph getGraph() {
        return graph;
    }

    /**
     * @param ruleName the given name
     * @return the {@link Rule} with the given name
     */
    public Rule getRule(String ruleName) {
        Rule rule = grammar.getRule(QualName.name(ruleName));
        if (rule == null) {
            throw new JavaGraphException("Rule not found");
        }
        return rule;
    }

    /**
     * @return a set of all the {@link Rule}s
     */
    public Set<Rule> getRules() {
        return grammar.getAllRules();
    }

    /**
     * @return a set of all the {@link Rule} names
     */
    public Set<QualName> getRuleNames() {
        return getRules().stream().map(Rule::getQualName).collect(Collectors.toSet());
    }

    /**
     * Finds a match associated with the {@link Rule} with the given name.
     *
     * @param ruleName the given {@link Rule} name
     * @return the {@link Proof} of the found match, or {@code null} if no match could be found
     * @see JavaMatcher#getRule(String)
     * @see Rule#getMatch(HostGraph, RuleToHostMap)
     */
    public Proof findMatch(String ruleName) {
        return getRule(ruleName).getMatch(graph, null);
    }

    /**
     * Finds all match associated with the {@link Rule} with the given name.
     *
     * @param ruleName the given {@link Rule} name
     * @return the collection of {@link Proof}s of the found matches
     * @see JavaMatcher#getRule(String)
     * @see Rule#getAllMatches(HostGraph, RuleToHostMap)
     */
    public Collection<Proof> findMatches(String ruleName) {
        return getRule(ruleName).getAllMatches(graph, null);
    }

    /**
     * Applies the first match of the {@link Rule} with the given name.
     *
     * @param ruleName the given {@link Rule} name
     * @throws JavaGraphException if no match could be found
     * @see JavaMatcher#findMatch(String)
     * @see JavaMatcher#applyMatch(Proof)
     */
    public void applyMatch(String ruleName) throws JavaGraphException {
        Proof proof = findMatch(ruleName);
        if (proof == null) {
            throw new JavaGraphException("No match found");
        }
        applyMatch(proof);
    }

    /**
     * Applies the given {@link Proof} to the Java graph.
     *
     * @param proof the given {@link Proof}
     */
    public void applyMatch(Proof proof) {
        Record record = new Record(grammar, graph.getFactory());
        RuleEvent event = proof.newEvent(record);
        RuleApplication application = new RuleApplication(event, graph);
        application.getTarget();
    }

    /**
     * Applies the first found match until no more matches are found. This is equivalent to GROOVE's exploration with a
     * linear search strategy, no accepting states and an infinite number of results.
     *
     * @see groove.explore.Exploration
     */
    public void explore() {
        boolean found = true;
        while (found) {
            found = false;
            for (Rule rule : getRules()) {
                Proof match = rule.getMatch(graph, null);
                if (match != null) {
                    found = true;
                    applyMatch(match);
                    break;
                }
            }
        }
    }

    /**
     * Adds all type nodes and edges from the given Java type graph to the given {@link TypeGraph}.
     *
     * @param typeGraph     the given {@link TypeGraph}
     * @param javaTypeGraph the Java type graph
     */
    private static void copyJavaTypeGraph(TypeGraph typeGraph, TypeGraph javaTypeGraph) {
        for (TypeNode javaNode : javaTypeGraph.nodeSet()) {
            if (!javaNode.isJavaNode()) {
                continue;
            }
            TypeNode node = typeGraph.getNode(javaNode.label());
            if (node == null) {
                throw new JavaGraphException("Missing node %s in GROOVE TypeGraph", javaNode);
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
                throw new JavaGraphException("Missing edge %s in GROOVE TypeGraph", javaEdge);
            }
            edge.setEdgeVisit(javaEdge.getEdgeVisit());
            edge.setEdgeCreate(javaEdge.getEdgeCreate());
            edge.setEdgeDelete(javaEdge.getEdgeDelete());
        }
    }

    /**
     * Initializes the given {@link JavaGraph} by creating all the nodes and edges that are in the given start graph.
     *
     * @param javaGraph  the given {@link JavaGraph}
     * @param startGraph the given start graph
     */
    private static void initGraph(JavaGraph javaGraph, HostGraph startGraph) {
        Map<HostNode, JavaNode> nodeMapping = new HashMap<>();
        for (HostNode grooveNode : startGraph.nodeSet()) {
            TypeNode type = grooveNode.getType();
            if (!type.isJavaNode()) {
                throw new JavaGraphException("Node %s is not a Java node", grooveNode);
            }
            JavaNode node = javaGraph.createNode(type);
            nodeMapping.put(grooveNode, node);
        }
        for (HostEdge grooveEdge : startGraph.edgeSet()) {
            if (!grooveEdge.getType().isJavaEdge()) {
                throw new JavaGraphException("Edge %s is not a Java edge", grooveEdge);
            }
            nodeMapping.get(grooveEdge.source()).createEdge(grooveEdge.label(), nodeMapping.get(grooveEdge.target()));
        }
    }

    /**
     * Loads a {@link Grammar} from the given {@link File}.
     *
     * @param file the given {@link File}
     * @return the loaded {@link Grammar}
     * @throws IOException     if the {@link Grammar} couldn't be loaded
     * @throws FormatException if the {@link Grammar} is formatted incorrectly
     */
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
