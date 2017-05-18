package graphbuilder;

import groove.graph.DefaultEdge;
import groove.graph.DefaultGraph;
import groove.graph.DefaultNode;
import groove.graph.Graph;
import groove.util.Groove;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.aspectj.ajdt.internal.compiler.ast.AdviceDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.AjMethodDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.AspectDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.DeclareAnnotationDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.DeclareDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.IfMethodDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.IfPseudoToken;
import org.aspectj.ajdt.internal.compiler.ast.InterTypeConstructorDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.InterTypeDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.InterTypeFieldDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.InterTypeMethodDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.PointcutDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.PointcutDesignator;
import org.aspectj.ajdt.internal.compiler.ast.Proceed;
import org.aspectj.ajdt.internal.compiler.ast.PseudoToken;
import org.aspectj.ajdt.internal.compiler.ast.PseudoTokens;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.Argument;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.AssertStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.Block;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.BranchStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.BreakStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.CharLiteral;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.Clinit;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ContinueStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.DoStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.DoubleLiteral;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.EmptyStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ExtendedStringLiteral;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.FalseLiteral;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.FloatLiteral;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ForStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.LabeledStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.LongLiteral;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.OR_OR_Expression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.PostfixExpression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.PrefixExpression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.QualifiedThisReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.StringLiteralConcatenation;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.ThrowStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.TrueLiteral;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.WhileStatement;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.aspectj.org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.aspectj.org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.aspectj.org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.aspectj.org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.aspectj.org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.aspectj.weaver.AdviceKind;
import org.aspectj.weaver.patterns.AndAnnotationTypePattern;
import org.aspectj.weaver.patterns.AndPointcut;
import org.aspectj.weaver.patterns.AndTypePattern;
import org.aspectj.weaver.patterns.AnnotationPatternList;
import org.aspectj.weaver.patterns.AnnotationPointcut;
import org.aspectj.weaver.patterns.AnyAnnotationTypePattern;
import org.aspectj.weaver.patterns.AnyTypePattern;
import org.aspectj.weaver.patterns.AnyWithAnnotationTypePattern;
import org.aspectj.weaver.patterns.ArgsAnnotationPointcut;
import org.aspectj.weaver.patterns.ArgsPointcut;
import org.aspectj.weaver.patterns.BindingAnnotationTypePattern;
import org.aspectj.weaver.patterns.BindingTypePattern;
import org.aspectj.weaver.patterns.CflowPointcut;
import org.aspectj.weaver.patterns.ConcreteCflowPointcut;
import org.aspectj.weaver.patterns.DeclareAnnotation;
import org.aspectj.weaver.patterns.DeclareErrorOrWarning;
import org.aspectj.weaver.patterns.DeclareParents;
import org.aspectj.weaver.patterns.DeclarePrecedence;
import org.aspectj.weaver.patterns.DeclareSoft;
import org.aspectj.weaver.patterns.EllipsisAnnotationTypePattern;
import org.aspectj.weaver.patterns.EllipsisTypePattern;
import org.aspectj.weaver.patterns.ExactAnnotationTypePattern;
import org.aspectj.weaver.patterns.ExactTypePattern;
import org.aspectj.weaver.patterns.HandlerPointcut;
import org.aspectj.weaver.patterns.HasMemberTypePattern;
import org.aspectj.weaver.patterns.IfPointcut;
import org.aspectj.weaver.patterns.KindedPointcut;
import org.aspectj.weaver.patterns.ModifiersPattern;
import org.aspectj.weaver.patterns.NamePattern;
import org.aspectj.weaver.patterns.NoTypePattern;
import org.aspectj.weaver.patterns.NotAnnotationTypePattern;
import org.aspectj.weaver.patterns.NotPointcut;
import org.aspectj.weaver.patterns.NotTypePattern;
import org.aspectj.weaver.patterns.OrAnnotationTypePattern;
import org.aspectj.weaver.patterns.OrPointcut;
import org.aspectj.weaver.patterns.OrTypePattern;
import org.aspectj.weaver.patterns.PatternNode;
import org.aspectj.weaver.patterns.PerCflow;
import org.aspectj.weaver.patterns.PerFromSuper;
import org.aspectj.weaver.patterns.PerObject;
import org.aspectj.weaver.patterns.PerSingleton;
import org.aspectj.weaver.patterns.PerTypeWithin;
import org.aspectj.weaver.patterns.Pointcut;
import org.aspectj.weaver.patterns.ReferencePointcut;
import org.aspectj.weaver.patterns.SignaturePattern;
import org.aspectj.weaver.patterns.ThisOrTargetAnnotationPointcut;
import org.aspectj.weaver.patterns.ThisOrTargetPointcut;
import org.aspectj.weaver.patterns.ThrowsPattern;
import org.aspectj.weaver.patterns.TypePatternList;
import org.aspectj.weaver.patterns.TypeVariablePattern;
import org.aspectj.weaver.patterns.TypeVariablePatternList;
import org.aspectj.weaver.patterns.WildAnnotationTypePattern;
import org.aspectj.weaver.patterns.WildTypePattern;
import org.aspectj.weaver.patterns.WithinAnnotationPointcut;
import org.aspectj.weaver.patterns.WithinCodeAnnotationPointcut;
import org.aspectj.weaver.patterns.WithinPointcut;
import org.aspectj.weaver.patterns.WithincodePointcut;

public class GraphBuilder extends AjASTVisitor {

	private static GraphBuilder instance;

	public static GraphBuilder instance(boolean useTypes) {
		if (instance == null) {
			instance = new GraphBuilder(useTypes);
		}
		return instance;
	}

	private GraphBuilder(boolean useTypes) {
		super();
		this.graph = new DefaultGraph();
		this.useTypes = useTypes;
	}
	
	private static String bannedClasses[] = {"Object", "ASTNode",
		"AjMethodDeclaration", "AjConstructorDeclaration", "SingleTypeReference",
		"AND_AND_Expression", "ArrayTypeReference", "ArrayQualifiedTypeReference",
		"Wildcard", "ParameterizedSingleTypeReference", "EqualExpression",
		"OR_OR_Expression", "QualifiedTypeReference",
		"ParameterizedQualifiedTypeReference"};
	
	/** The graph that this builder works on. **/
	private Graph graph;
	
	private boolean useTypes;
	
	/** Stores AST Nodes with their representing graph nodes. **/  
	private Map<Object,DefaultNode> nodes = new HashMap<Object,DefaultNode>();
	
	/** Stores literals with their representing graph nodes. **/
	private Map<String,DefaultNode> literals = new HashMap<String,DefaultNode>();
	
	private Map<String,List<DefaultEdge>> pendingEdges = new HashMap<String,List<DefaultEdge>>();
	
	private String string(char[] word) {
		return new String(word);
	}
	
	public String typeName(char[][] typeName) {
		String ret = "" + new String(typeName[0]);
		for (int i = 1; i < typeName.length; i++) {
			ret += ".";
			ret += new String(typeName[i]);
		}
		
		return ret;
	}
	
	public void writeGraph(String filename) {
		try {
			Groove.saveGraph(graph, filename);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void addEdgeToOptional(DefaultNode srcNode, String label, Object tgt) {
		DefaultNode tgtNode = nodes.get(tgt);
		if (tgtNode != null) {
			this.addEdge(srcNode, label, tgtNode);
		}
	}
	
	public void addEdgeToAll(DefaultNode srcNode, String label, Object[] list) {
		if (list != null) {
			for (Object o : list) {
				addEdgeToOptional(srcNode, label, (ASTNode) o);
			}
		}
	}
	
	public void addIndexedEdgeToAll(DefaultNode srcNode, String label, Object[] list) {
		if (list != null) {
			int index = 0; 
			for (Object o : list) {
				addIndexedEdge(srcNode, label, index, o);
				index++;
			}
			addIntegerAttribute(srcNode, label + "LastIndex", index - 1);
		}
	}
	
	public void addDoubleIndexedEdgeToAll(DefaultNode srcNode, String label, Object[][] list) {
		if (list != null) {
			int index_m = 0;
			int index_n = 0;
			for (Object[] m : list) {
				if (m != null) {
					for (Object n : m) {
						addIndexedEdge(srcNode, label, index_m, n, "index_0");
						addIndexedEdge(srcNode, label, index_n, n, "index_1");
						index_n++;
					}
					index_m++;
				}
			}
		} 
	}
	
	public void addIndexedEdge(DefaultNode srcNode, String label, int index, Object tgt) {
		addIndexedEdge(srcNode, label, index, tgt, "index");
	}
	
	public void addIndexedEdge(DefaultNode srcNode, String label, int index, Object tgt, String indexLabel) {
		DefaultNode tgtNode = nodes.get(tgt);
		if (tgtNode != null) {
			addEdge(srcNode, label, tgtNode);
			addIntegerAttribute(tgtNode, indexLabel, index);
		}
	}
	
	public void addStringAttribute(DefaultNode node, String attribute, String value) {
		if (value.compareTo("") != 0) {
			DefaultNode valueNode = fetchLiteral("string:\"" + value + "\"");
			addEdge(node, attribute, valueNode);
		}
	}

	public void addBooleanAttribute(DefaultNode node, String attribute, boolean value) {
		DefaultNode valueNode = fetchLiteral("bool:" + value);
		addEdge(node, attribute, valueNode);
	}

	
	public void addIntegerAttribute(DefaultNode node, String attribute, int value) {
		DefaultNode valueNode = fetchLiteral("int:" + value);
		addEdge(node, attribute, valueNode);
	}
	
	public void addRealAttribute(DefaultNode node, String attribute, double value) {
		DefaultNode valueNode = fetchLiteral("real:" + value);
		addEdge(node, attribute, valueNode);
	}
	
    public DefaultNode fetchNode(Object o) {
    	DefaultNode node = nodes.get(o);
    	if (node == null) {
    		node = createNode();
    		nodes.put(o, node);
    	}    	
    	return node;
    }
    
    public DefaultNode fetchLiteral(String s) {
    	DefaultNode node = literals.get(s);
    	if (node == null) {
    		node = createNode();
    		this.addLabel(node, s, false);
    		literals.put(s,node);
    	}
    	return node;
    }
    
    public DefaultNode createNode() {
    	DefaultNode node = DefaultNode.createNode();
    	graph.addNode(node);
    	return node;
    }

    public void setPendingEdge(String targetLabel, DefaultNode source, String edgeLabel) {
    	DefaultNode dummyTarget = DefaultNode.createNode();
    	DefaultEdge pendingEdge = DefaultEdge.createEdge(source, edgeLabel, dummyTarget);
    	
    	if (!pendingEdges.containsKey(targetLabel)) {
    		List<DefaultEdge> edges = new LinkedList<DefaultEdge>();
    		edges.add(pendingEdge);
    		pendingEdges.put(targetLabel, edges);
    	} else {
    		List<DefaultEdge> edges = pendingEdges.get(targetLabel);
    		edges.add(pendingEdge);
    	}
    }
    
    public void constructPendingEdges(DefaultNode target, String sourceLabel) {
    	if (pendingEdges.containsKey(sourceLabel)) {
    		List<DefaultEdge> edges = pendingEdges.remove(sourceLabel);
    		while (!edges.isEmpty()) {
    			DefaultEdge edge = edges.remove(0);
    			graph.addEdge(DefaultEdge.createEdge(edge.source(), edge.label(), target));
    		}
    	}
    }
    
    public void constructSystemCompilationUnit() {
    	if (!pendingEdges.isEmpty()) {
    		DefaultNode cuNode = createNode();
    		addLabel(cuNode, StringConstants.COMPILATION_UNIT_DECLARATION);
    		HashSet<String> pending = new HashSet<String>(pendingEdges.keySet());
	    	for (String typeName : pending) {
	    		DefaultNode typeNode = createNode();
	    		addLabel(typeNode, StringConstants.TYPE_DECLARATION);
	    		addStringAttribute(typeNode, StringConstants.NAME, typeName);
	    		addEdge(cuNode, StringConstants.TYPE, typeNode);
	    		constructPendingEdges(typeNode, typeName);
	    	}
    	}
    }
    
    public void addLabels(DefaultNode node, String[] labels) {
    	for (int i = 0; i < labels.length; i++) {
    		addLabel(node, labels[i]);
    	}
    }
    
    public void addLabel(DefaultNode node, String label, boolean isTypeAllowed) {
    	if (isTypeAllowed) {
    		addLabel(node, label);
    	} else {
    		
    	} graph.addEdge(DefaultEdge.createEdge(node, label, node));
    }
    
    public void addLabel(DefaultNode node, String label) {
    	String prefixedLabel;
    	if (this.useTypes) {
    		prefixedLabel = StringConstants.TYPE_PREFIX + label;
    	} else {
    		prefixedLabel = label;
    	}
    	graph.addEdge(DefaultEdge.createEdge(node, prefixedLabel, node)); 
    }
    
    public void addEdge(DefaultNode src, String label, DefaultNode tgt) {
    	graph.addEdge(DefaultEdge.createEdge(src, label, tgt));
    }

    public List<String> getClassHierarchy (Class<?> c) {
    	List<String> classNames = new LinkedList<String>();
    	Class<?> objectClass = c;
    	while (objectClass != null) {
    		String className = objectClass.getSimpleName();
    		if (!isBannedClass(className)) {
        		classNames.add(className);
        		if (this.useTypes) {
        			break;
        		}
    		}
    		objectClass = objectClass.getSuperclass();
    	}
    	return classNames;
    }
    
    private boolean isBannedClass(String className) {
    	boolean result = false;
		for (String name : bannedClasses) {
			if (name.equals(className)) {
				result = true;
				break;
			}
		}
		return result;
	}

	public List<String> getClassHierarchy (ASTNode node) {
    	return getClassHierarchy(node.getClass());
    }
    
    public void purgeClassNames (List<String> list) {
    	purgeClassNames(list, bannedClasses);
    }
    
    public void purgeClassNames (List<String> list, String[] bannedClasses) {
    	for (String className : bannedClasses) {
    		if (list.contains(className)) {
    			list.remove(className);
    		}
    	}
    }
    
    public void addClassHierarchyLabels(ASTNode node, DefaultNode n) {
    	List<String> classHierarchy = getClassHierarchy(node);
    	purgeClassNames(classHierarchy);
    	for (String className : classHierarchy) {
    		for (String[] abbrevPair : StringConstants.abbreviations) {
    			className = className.replaceAll(abbrevPair[0], abbrevPair[1]);
    		}
    		addLabel(n, className);
		}
    }
    
    public void dumpClassHierarchy(String intoFile) {
    	String[] bannedClasses = {"Object"};
    	Class<?> c = this.getClass();
    	
    	try {
 	        BufferedWriter out = new BufferedWriter(new FileWriter(intoFile));
    	
 	        Method[] allMethods = c.getDeclaredMethods();
 	 	    for (Method m : allMethods) {
 	 	    	if (m.getName().equals("endVisit")) {
 	 	    		Class<?>[] pType  = m.getParameterTypes();
 	 	    		List<String> classNames = getClassHierarchy(pType[0]);
 	 	    		purgeClassNames(classNames, bannedClasses);
 	 	    	    for (String className : classNames) {
 	 	    	    	out.write(className + "\n");
 	 	 	    	}
 	 	 	    	out.write("\n");
 	 	    	}
 	 	    }
 	 	    out.close();
    	} catch (IOException e) {
    		System.err.println("OOPS, could not open file!");
    		e.printStackTrace();
  	    }
    }
    
    // ------------------------------------------------------------------------
    // Private methods to avoid code duplication.
    // ------------------------------------------------------------------------
    
    private void doEndVisitOnAbstractMethodDeclaration(AbstractMethodDeclaration node) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addStringAttribute(n, StringConstants.NAME, string(node.selector));
		addStringAttribute(n, StringConstants.SIGNATURE, string(node.binding.signature()));
		addBooleanAttribute(n, StringConstants.STATIC, node.isStatic());
		
		addIndexedEdgeToAll(n, StringConstants.ARGUMENT, node.arguments);
		addEdgeToAll(n, StringConstants.THROWN_EXCEPTION, node.thrownExceptions);
		addIndexedEdgeToAll(n, StringConstants.STATEMENT, node.statements);
    }
    
    private void doEndVisitOnAllocationExpression(AllocationExpression node) {
    	DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addStringAttribute(n, StringConstants.SIGNATURE, string(node.binding.signature()));
		addIndexedEdgeToAll(n, StringConstants.TYPE_ARGUMENT, node.typeArguments);
		addEdgeToOptional(n, StringConstants.TYPE, node.type);
		addIndexedEdgeToAll(n, StringConstants.ARGUMENT, node.arguments);
    }
    
    private void doEndVisitOnAssignment(Assignment node) {
    	DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.LHS, node.lhs);
		addEdgeToOptional(n, StringConstants.EXPRESSION, node.expression);
		if (node instanceof CompoundAssignment) {
			addStringAttribute(n, StringConstants.OPERATOR, ((CompoundAssignment) node).operatorToString());
		} else {
			addStringAttribute(n, StringConstants.OPERATOR, "=");
		}
    }
    
    private void doEndVisitOnBinaryExpression(BinaryExpression node) {
    	DefaultNode n = fetchNode(node);
    	
		addClassHierarchyLabels(node, n);
		
		addStringAttribute(n, StringConstants.OPERATOR, node.operatorToString());
		addEdgeToOptional(n, StringConstants.LEFT, node.left);
		addEdgeToOptional(n, StringConstants.RIGHT, node.right);
    }
    
    private void doEndVisitOnBranchStatement(BranchStatement node) {
    	DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		if (node.label != null) {
			setPendingEdge(string(node.label), n, StringConstants.LABEL);
		}
    }
    
    private void doEndVisitOnFieldReference(FieldReference node) {
    	DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);

		// FIXME: This name should be removed and a reference edge added.
		addStringAttribute(n, StringConstants.NAME, string(node.token));
		addEdgeToOptional(n, StringConstants.RECEIVER, node.receiver);
    }
    
    private void doEndVisitOnLocalDeclaration(LocalDeclaration node) {
    	DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		nodes.put(node.binding, n);
		
		addStringAttribute(n, StringConstants.NAME, string(node.name));
		addEdgeToOptional(n, StringConstants.TYPE, node.type);
		addEdgeToOptional(n, StringConstants.INITIALIZATION, node.initialization);
    }
    
    private void doEndVisitOnNameReference(NameReference node) {
    	DefaultNode n = fetchNode(node); 

		addClassHierarchyLabels(node, n);
		
		if (node instanceof QualifiedNameReference) {
			addStringAttribute(n, StringConstants.NAME,
					typeName(((QualifiedNameReference)node).tokens));
		} else if (node instanceof SingleNameReference) {
			addStringAttribute(n, StringConstants.NAME,
					string(((SingleNameReference)node).token));
		}
		DefaultNode refersTo = fetchNode(node.binding);
		addEdge(n, StringConstants.REFERS_TO, refersTo);
    }
    
    private void doEndVisitOnQualifiedThisReference(QualifiedThisReference node) {
    	DefaultNode n = fetchNode(node); 

		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.QUALIFICATION, node.qualification);
    }
    
    private void doEndVisitOnTypeDeclaration(TypeDeclaration node) {
    	DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		/*switch(TypeDeclaration.kind(node.modifiers)) {
			case TypeDeclaration.INTERFACE_DECL :
				addLabel(n, StringConstants.INTERFACE_DECL);
				break;
			case TypeDeclaration.CLASS_DECL :
				addLabel(n, StringConstants.CLASS_DECL);
				break;
		}*/
		
		addStringAttribute(n, StringConstants.NAME, string(node.name));
		addEdgeToOptional(n, StringConstants.SUPER_CLASS, node.superclass);
		addEdgeToAll(n, StringConstants.SUPER_INTERFACE, node.superInterfaces);
		addIndexedEdgeToAll(n, StringConstants.TYPE_PARAMETER, node.typeParameters);
		addEdgeToAll(n, StringConstants.MEMBER_TYPE, node.memberTypes);
		addIndexedEdgeToAll(n, StringConstants.FIELD, node.fields);
		addEdgeToAll(n, StringConstants.METHOD, node.methods);
		
		String name = typeName(node.binding.compoundName);
		literals.put(name, n);
		constructPendingEdges(n, name);
    }
    
    private void doEndVisitOnTypeParameter(TypeParameter node) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.TYPE, node.type);
		addIndexedEdgeToAll(n, StringConstants.BOUND, node.bounds);
    }
    
    private void doEndVisitOnTypeReference(TypeReference node) {
    	DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);

		String resolvedType = string(node.resolvedType.readableName());
		if (node instanceof ParameterizedQualifiedTypeReference) {
			addDoubleIndexedEdgeToAll(n, StringConstants.TYPE_ARGUMENT,
					((ParameterizedQualifiedTypeReference) node).typeArguments);
		} else if (node instanceof ParameterizedSingleTypeReference) {
			addIndexedEdgeToAll(n, StringConstants.TYPE_ARGUMENT,
					((ParameterizedSingleTypeReference) node).typeArguments);
		} else if (node instanceof ArrayQualifiedTypeReference ||
				   node instanceof ArrayTypeReference) {
			while (resolvedType.endsWith("[]")) {
				resolvedType = resolvedType.substring(0, resolvedType.length() - 2); 
			}
			addIntegerAttribute(n, StringConstants.DIMENSIONS, node.dimensions());
		}
		addStringAttribute(n, StringConstants.RESOLVED_TYPE, resolvedType);
		if (literals.containsKey(resolvedType)) {
			DefaultNode typeNode = fetchLiteral(resolvedType);
			addEdge(n, StringConstants.REFERS_TO, typeNode);
		} else {
			setPendingEdge(resolvedType, n, StringConstants.REFERS_TO);
		}
    }
    
    private void doEndVisitOnWildcard(Wildcard node) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.BOUND, node.bound);
    }
    
    /**
     *   Override methods for the ASTVisitor class
     */
    
	@Override
	public void endVisit(AllocationExpression node, BlockScope scope) {
		doEndVisitOnAllocationExpression(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(AND_AND_Expression node, BlockScope scope) {
		doEndVisitOnBinaryExpression(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(AnnotationMethodDeclaration node, ClassScope classScope) {
		// Annotations are not runnable elements.
		super.endVisit(node, classScope);
	}

	@Override
	public void endVisit(Argument node, BlockScope scope) {
		doEndVisitOnLocalDeclaration(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(Argument node, ClassScope scope) {
		doEndVisitOnLocalDeclaration(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ArrayAllocationExpression node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);

		addEdgeToOptional(n, StringConstants.TYPE, node.type);
		addIndexedEdgeToAll(n, StringConstants.DIMENSION, node.dimensions);
		addEdgeToOptional(n, StringConstants.INITIALIZER, node.initializer);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ArrayInitializer node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addIndexedEdgeToAll(n, StringConstants.EXPRESSION, node.expressions);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ArrayQualifiedTypeReference node, BlockScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ArrayQualifiedTypeReference node, ClassScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ArrayReference node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.RECEIVER, node.receiver);
		addEdgeToOptional(n, StringConstants.POSITION, node.position);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ArrayTypeReference node, BlockScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ArrayTypeReference node, ClassScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(AssertStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);

		addEdgeToOptional(n, StringConstants.ASSERT_EXPRESSION, node.assertExpression);
		addEdgeToOptional(n, StringConstants.EXCEPTION_ARGUMENT, node.exceptionArgument);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(Assignment node, BlockScope scope) {
		doEndVisitOnAssignment(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(BinaryExpression node, BlockScope scope) {
		doEndVisitOnBinaryExpression(node);	
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(Block node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addIndexedEdgeToAll(n, StringConstants.STATEMENT, node.statements);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(BreakStatement node, BlockScope scope) {
		doEndVisitOnBranchStatement(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(CaseStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.EXPRESSION, node.constantExpression);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(CastExpression node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.TYPE, node.type);
		addEdgeToOptional(n, StringConstants.EXPRESSION, node.expression);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(CharLiteral node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addIntegerAttribute(n, StringConstants.VALUE, node.constant.charValue());
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ClassLiteralAccess node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.TYPE, node.type);
				
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(Clinit node, ClassScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(CompilationUnitDeclaration node, CompilationUnitScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		if (this.useTypes) {
			addLabel(n, StringConstants.FLAG_PREFIX + "startingPoint", false);
		} else {
			addLabel(n, "startingPoint", false);
		}
		
		addEdgeToAll(n, StringConstants.TYPE, node.types);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(CompoundAssignment node, BlockScope scope) {
		doEndVisitOnAssignment(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ConditionalExpression node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.CONDITION, node.condition);
		addEdgeToOptional(n, StringConstants.VALUE_IF_TRUE, node.valueIfTrue);
		addEdgeToOptional(n, StringConstants.VALUE_IF_FALSE, node.valueIfFalse);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ConstructorDeclaration node, ClassScope scope) { 
		DefaultNode n = fetchNode(node);

		doEndVisitOnAbstractMethodDeclaration(node);
		addIndexedEdgeToAll(n, StringConstants.TYPE_PARAMETER, node.typeParameters);
		addEdgeToOptional(n, StringConstants.CONSTRUCTOR_CALL, node.constructorCall);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ContinueStatement node, BlockScope scope) {
		doEndVisitOnBranchStatement(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(DoStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.ACTION, node.action);
		addEdgeToOptional(n, StringConstants.CONDITION, node.condition);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(DoubleLiteral node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addRealAttribute(n, StringConstants.VALUE, node.constant.doubleValue());
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(EmptyStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(EqualExpression node, BlockScope scope) {
		doEndVisitOnBinaryExpression(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ExplicitConstructorCall node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addStringAttribute(n, StringConstants.SIGNATURE, string(node.binding.signature()));
		addIndexedEdgeToAll(n, StringConstants.TYPE_ARGUMENT, node.typeArguments);
		addIndexedEdgeToAll(n, StringConstants.ARGUMENT, node.arguments);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ExtendedStringLiteral node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addStringAttribute(n, StringConstants.VALUE, node.constant.stringValue());
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(FalseLiteral node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addBooleanAttribute(n, StringConstants.VALUE, node.constant.booleanValue());
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(FieldDeclaration node, MethodScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		nodes.put(node.binding, n);

		addStringAttribute(n, StringConstants.NAME, string(node.name));
		addBooleanAttribute(n, StringConstants.STATIC, node.isStatic());
		addEdgeToOptional(n, StringConstants.TYPE, node.type);
		addEdgeToOptional(n, StringConstants.INITIALIZATION, node.initialization);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(FieldReference node, BlockScope scope) {
		doEndVisitOnFieldReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(FieldReference node, ClassScope scope) {
		doEndVisitOnFieldReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(FloatLiteral node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addRealAttribute(n, StringConstants.VALUE, node.constant.floatValue());
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ForeachStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.ELEMENT_VARIABLE, node.elementVariable);
		addEdgeToOptional(n, StringConstants.COLLECTION, node.collection);
		addEdgeToOptional(n, StringConstants.ACTION, node.action);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ForStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addIndexedEdgeToAll(n, StringConstants.INITIALIZATION, node.initializations);
		addEdgeToOptional(n, StringConstants.CONDITION, node.condition);
		addIndexedEdgeToAll(n, StringConstants.INCREMENT, node.increments);
		addEdgeToOptional(n, StringConstants.ACTION, node.action);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(IfStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.CONDITION, node.condition);
		addEdgeToOptional(n, StringConstants.THEN_STATEMENT, node.thenStatement);
		addEdgeToOptional(n, StringConstants.ELSE_STATEMENT, node.elseStatement);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ImportReference node, CompilationUnitScope scope) {
		// Imports are resolved by the compiler.
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(Initializer node, MethodScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.BLOCK, node.block);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(InstanceOfExpression node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.EXPRESSION, node.expression);
		addEdgeToOptional(n, StringConstants.TYPE, node.type);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(IntLiteral node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addIntegerAttribute(n, StringConstants.VALUE, node.value);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(LabeledStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addStringAttribute(n, StringConstants.LABEL, string(node.label));
		addEdgeToOptional(n, StringConstants.STATEMENT, node.statement);
		
		constructPendingEdges(n, string(node.label));
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(LocalDeclaration node, BlockScope scope) {
		doEndVisitOnLocalDeclaration(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(LongLiteral node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addIntegerAttribute(n, StringConstants.VALUE, node.constant.intValue());
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(MarkerAnnotation node, BlockScope scope) {
		// Annotations are not runnable elements.
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(MemberValuePair node, BlockScope scope) {
		// Annotations are not runnable elements.
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(MessageSend node, BlockScope scope) {
		// This method is called from any element, thus may be called on ASTVisitor.
		// This makes sure it lands at the AjASTVisitor method for Proceed.
		if( node instanceof Proceed ) {
			Proceed p = (Proceed) node;
			((AjASTVisitor)this).endVisit(p, scope);
			return;
		}
		
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addStringAttribute(n, StringConstants.NAME, string(node.selector));
		addStringAttribute(n, StringConstants.SIGNATURE, string(node.binding.signature()));
		addEdgeToOptional(n, StringConstants.RECEIVER, node.receiver);
		addIndexedEdgeToAll(n, StringConstants.TYPE_ARGUMENT, node.typeArguments);
		addIndexedEdgeToAll(n, StringConstants.ARGUMENT, node.arguments);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(MethodDeclaration node, ClassScope scope) {
		if( node instanceof AjMethodDeclaration && node.getClass() != AjMethodDeclaration.class ) {
			throw new RuntimeException("OOOPS! AjMethodDeclaration not caught by AjASTVisitor");
		}

		DefaultNode n = fetchNode(node);
		
		doEndVisitOnAbstractMethodDeclaration(node);
		addIndexedEdgeToAll(n, StringConstants.TYPE_PARAMETER, node.typeParameters);
		addEdgeToOptional(n, StringConstants.RETURN_TYPE, node.returnType);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(NormalAnnotation node, BlockScope scope) {
		// Annotations are not runnable elements.
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(NullLiteral node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addStringAttribute(n, StringConstants.VALUE, string(node.source()));
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(OR_OR_Expression node, BlockScope scope) {
		doEndVisitOnBinaryExpression(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ParameterizedQualifiedTypeReference node, BlockScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ParameterizedQualifiedTypeReference node, ClassScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ParameterizedSingleTypeReference node, BlockScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ParameterizedSingleTypeReference node, ClassScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(PostfixExpression node, BlockScope scope) {
		doEndVisitOnAssignment(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(PrefixExpression node, BlockScope scope) {
		doEndVisitOnAssignment(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(QualifiedAllocationExpression node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		doEndVisitOnAllocationExpression(node);
		addEdgeToOptional(n, StringConstants.ENCLOSING_INSTANCE, node.enclosingInstance);
		addEdgeToOptional(n, StringConstants.ANONYMOUS_TYPE, node.anonymousType);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(QualifiedNameReference node, BlockScope scope) {
		doEndVisitOnNameReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(QualifiedNameReference node, ClassScope scope) {
		doEndVisitOnNameReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(QualifiedSuperReference node, BlockScope scope) {
		doEndVisitOnQualifiedThisReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(QualifiedSuperReference node, ClassScope scope) {
		doEndVisitOnQualifiedThisReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(QualifiedThisReference node, BlockScope scope) {
		doEndVisitOnQualifiedThisReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(QualifiedThisReference node, ClassScope scope) {
		doEndVisitOnQualifiedThisReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(QualifiedTypeReference node, BlockScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(QualifiedTypeReference node, ClassScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ReturnStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.EXPRESSION, node.expression);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(SingleMemberAnnotation node, BlockScope scope) {
		// Annotations are not runnable elements.
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(SingleNameReference node, BlockScope scope) {
		doEndVisitOnNameReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(SingleNameReference node, ClassScope scope) {
		doEndVisitOnNameReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(SingleTypeReference node, BlockScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(SingleTypeReference node, ClassScope scope) {
		doEndVisitOnTypeReference(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(StringLiteral node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
				
		addClassHierarchyLabels(node, n);
		
		addStringAttribute(n, StringConstants.VALUE, node.constant.stringValue());
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(StringLiteralConcatenation node, BlockScope scope) {
		// Cannot figure this one out...
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(SuperReference node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(SwitchStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);

		addEdgeToOptional(n, StringConstants.EXPRESSION, node.expression);
		addIndexedEdgeToAll(n, StringConstants.STATEMENT, node.statements);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(SynchronizedStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);

		addEdgeToOptional(n, StringConstants.EXPRESSION, node.expression);
		addEdgeToOptional(n, StringConstants.BLOCK, node.block);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ThisReference node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);

		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ThisReference node, ClassScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(ThrowStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);
		
		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.EXCEPTION, node.exception);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(TrueLiteral node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addBooleanAttribute(n, StringConstants.VALUE, node.constant.booleanValue());
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(TryStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.TRY_BLOCK, node.tryBlock);
		addIndexedEdgeToAll(n, StringConstants.CATCH_ARGUMENT, node.catchArguments);
		addIndexedEdgeToAll(n, StringConstants.CATCH_BLOCK, node.catchBlocks);
		addEdgeToOptional(n, StringConstants.FINALLY_BLOCK, node.finallyBlock);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(TypeDeclaration node, BlockScope scope) {
		doEndVisitOnTypeDeclaration(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(TypeDeclaration node, ClassScope scope) {
		doEndVisitOnTypeDeclaration(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(TypeDeclaration node, CompilationUnitScope scope) {
		doEndVisitOnTypeDeclaration(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(TypeParameter node, BlockScope scope) {
		doEndVisitOnTypeParameter(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(TypeParameter node, ClassScope scope) {
		doEndVisitOnTypeParameter(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(UnaryExpression node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addStringAttribute(n, StringConstants.OPERATOR, node.operatorToString());
		addEdgeToOptional(n, StringConstants.EXPRESSION, node.expression);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(WhileStatement node, BlockScope scope) {
		DefaultNode n = fetchNode(node);

		addClassHierarchyLabels(node, n);
		
		addEdgeToOptional(n, StringConstants.CONDITION, node.condition);
		addEdgeToOptional(n, StringConstants.ACTION, node.action);
		
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(Wildcard node, BlockScope scope) {
		doEndVisitOnWildcard(node);
		super.endVisit(node, scope);
	}

	@Override
	public void endVisit(Wildcard node, ClassScope scope) {
		doEndVisitOnWildcard(node);
		super.endVisit(node, scope);
	}

	// ------------------------------------------------------------
	// EZ: All the methods from here on are for AspectJ constructs.
	// ------------------------------------------------------------
	
	public void endVisit(AdviceDeclaration node, ClassScope scope) {
		DefaultNode n = fetchNode(node);
		addLabel(n,"AdviceDeclaration");
		
		if( node.kind == AdviceKind.After ) {
			addLabel(n,"AfterAdviceDeclaration");
		}
		if( node.kind == AdviceKind.Before ) {
			addLabel(n,"BeforeAdviceDeclaration");
		}
		if( node.kind == AdviceKind.Around ) {
			addLabel(n,"AroundAdviceDeclaration");
		}
		
		if( node.pointcutDesignator != null ) {
			endVisit(node.pointcutDesignator, node.scope);
		}

		addEdgeToOptional(n,"pointcutDesignator", node.pointcutDesignator);
	}

	public void endVisit(DeclareDeclaration node, ClassScope scope) {
		
		DefaultNode n = fetchNode(node);
		addLabel(n, "DeclareDeclaration");
		
	}

	public void endVisit(IfMethodDeclaration node, ClassScope scope) {
		
		DefaultNode n = fetchNode(node);
		addLabel(n,"IfMethodDeclaration");
		
		addEdgeToOptional(n, "ifPointcut", node.ifPointcut);
	}

	public void endVisit(InterTypeDeclaration node, ClassScope scope) {
		// TODO Auto-generated method stub
	}

	public void endVisit(PointcutDeclaration node, ClassScope scope) {
		DefaultNode n = fetchNode(node);
		addLabel(n, "PointcutDeclaration");
		addStringAttribute(n, "name", node.resolvedPointcutDeclaration.getName());
		
		if( node.pointcutDesignator != null ) {
			endVisit(node.pointcutDesignator, node.scope);
		}
		
		addEdgeToOptional(n, "pointcutDesignator", node.pointcutDesignator );
		
	}

	public void endVisit(PointcutDesignator node, MethodScope scope) {
		DefaultNode n = fetchNode(node);
		addLabel(n, "PointcutDesignator");
		
		addEdgeToOptional(n, "pointcut", node.getPointcut());
	}
	
	@Override
	public void endVisit(AspectDeclaration node, ClassScope scope) {
		// TODO Auto-generated method stub
	}

	@Override
	public void endVisit(AspectDeclaration node, BlockScope scope) {
	}
	
	@Override
	public void endVisit(AspectDeclaration node, CompilationUnitScope scope) {
		// TODO Auto-generated method stub
	}

	@Override
	public void endVisit(DeclareAnnotationDeclaration node, ClassScope scope) {
	}

	@Override
	public void endVisit(IfPseudoToken node, Scope scope) {
		// TODO Auto-generated method stub
	}

	@Override
	public void endVisit(InterTypeConstructorDeclaration node, ClassScope scope) {
		// TODO Auto-generated method stub
	}

	@Override
	public void endVisit(InterTypeFieldDeclaration node, ClassScope scope) {
		// TODO Auto-generated method stub
	}

	@Override
	public void endVisit(InterTypeMethodDeclaration node, ClassScope scope) {
		// TODO Auto-generated method stub
	}

	@Override
	public void endVisit(PointcutDesignator node, Scope scope) {
		// TODO Auto-generated method stub
	}

	@Override
	public void endVisit(Proceed node, BlockScope scope) {
		// TODO Auto-generated method stub
	}

	@Override
	public void endVisit(PseudoToken node, Scope scope) {
		// TODO Auto-generated method stub
	}

	@Override
	public void endVisit(PseudoTokens node, Scope scope) {
		// TODO Auto-generated method stub
	}

	/** From here everything is a PatternNode **/
	
	@Override
	public Object visit(AndAnnotationTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object visit(AndPointcut node, Object data) {
		DefaultNode n = fetchNode(node);
		addLabel(n, "Pointcut");
		addLabel(n, node.getClass().getSimpleName());
		AndPointcut pc = (AndPointcut) node;
		addEdgeToOptional(n, "left", pc.getLeft());
		addEdgeToOptional(n, "right", pc.getRight());
		return data;
	}

	@Override
	public Object visit(AndTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(AnnotationPatternList node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(AnnotationPointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(AnyAnnotationTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(AnyTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(AnyWithAnnotationTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(ArgsAnnotationPointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(ArgsPointcut node, Object data) {

		DefaultNode n = fetchNode(node);
		addLabel(n, "Pointcut");
		addLabel(n, node.getClass().getSimpleName());

		//ArgsPointcut pc = (ArgsPointcut) node;
		
		// XXX finished???
		
		return data;
	}

	@Override
	public Object visit(BindingAnnotationTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(BindingTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(CflowPointcut node, Object data) {
		DefaultNode n = fetchNode(node);
		addLabel(n, "Pointcut");
		addLabel(n, node.getClass().getSimpleName());

		CflowPointcut pc = (CflowPointcut) node;
		addEdgeToOptional(n, "entry", pc.getEntry());
		addBooleanAttribute(n, "isBelow", pc.isCflowBelow());
		
		return data;
	}

	@Override
	public Object visit(ConcreteCflowPointcut node, Object data) {

		DefaultNode n = fetchNode(node);
		addLabel(n, "Pointcut");
		addLabel(n, node.getClass().getSimpleName());

		// XXX not finished yet!
		
		return data;
	}

	@Override
	public Object visit(DeclareAnnotation node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(DeclareErrorOrWarning node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(DeclareParents node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(DeclarePrecedence node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(DeclareSoft node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(EllipsisAnnotationTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(EllipsisTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(ExactAnnotationTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(ExactTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(HandlerPointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(HasMemberTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(IfPointcut node, Object data) {

		DefaultNode n = fetchNode(node);
		addLabel(n, "Pointcut");
		addLabel(n, node.getClass().getSimpleName());
		
		IfPointcut pc = (IfPointcut) node;
		addEdgeToOptional(n, "residueSource", pc.getResidueSource());
		
		return data;
	}

	@Override
	public Object visit(KindedPointcut node, Object data) {

		DefaultNode n = fetchNode(node);
		addLabel(n, "Pointcut");
		addLabel(n, node.getClass().getSimpleName());

		KindedPointcut pc = (KindedPointcut) node;
		addStringAttribute(n, "kind", pc.getKind().getName());
		
		return data;
	}

	@Override
	public Object visit(Pointcut.MatchesNothingPointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(ModifiersPattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(NamePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(NotAnnotationTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(NotPointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(NotTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(NoTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(OrAnnotationTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(OrPointcut node, Object data) {
		DefaultNode n = fetchNode(node);
		addLabel(n, "Pointcut");
		addLabel(n, node.getClass().getSimpleName());

		OrPointcut pc = (OrPointcut) node;
		addEdgeToOptional(n, "left", pc.getLeft());
		addEdgeToOptional(n, "right",pc.getRight());

		return data;
	}

	@Override
	public Object visit(OrTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(PatternNode node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(PerCflow node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(PerFromSuper node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(PerObject node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(PerSingleton node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(PerTypeWithin node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(ReferencePointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(SignaturePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(ThisOrTargetAnnotationPointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(ThisOrTargetPointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(ThrowsPattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(TypePatternList node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(TypeVariablePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(TypeVariablePatternList node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(WildAnnotationTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(WildTypePattern node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(WithinAnnotationPointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(WithinCodeAnnotationPointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(WithincodePointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}

	@Override
	public Object visit(WithinPointcut node, Object data) {
		// TODO Auto-generated method stub
		return data;
	}
	
}
