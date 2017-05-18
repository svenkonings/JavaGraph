package graphbuilder;

import org.aspectj.ajdt.internal.compiler.ast.AdviceDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.AspectDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.DeclareAnnotationDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.DeclareDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.IfMethodDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.IfPseudoToken;
import org.aspectj.ajdt.internal.compiler.ast.InterTypeConstructorDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.InterTypeFieldDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.InterTypeMethodDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.PointcutDeclaration;
import org.aspectj.ajdt.internal.compiler.ast.PointcutDesignator;
import org.aspectj.ajdt.internal.compiler.ast.Proceed;
import org.aspectj.ajdt.internal.compiler.ast.PseudoToken;
import org.aspectj.ajdt.internal.compiler.ast.PseudoTokens;
import org.aspectj.org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.aspectj.org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.aspectj.org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.aspectj.org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.aspectj.org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.aspectj.weaver.patterns.PatternNodeVisitor;

public abstract class AjASTVisitor extends ASTVisitor implements PatternNodeVisitor {

	public void endVisit(AspectDeclaration node, ClassScope scope) { }
	public void endVisit(AspectDeclaration node, BlockScope scope) { }
	public void endVisit(AspectDeclaration node, CompilationUnitScope scope) { }
	public void endVisit(AdviceDeclaration node, ClassScope scope) {}
	public void endVisit(DeclareDeclaration node, ClassScope scope) {}
	public void endVisit(DeclareAnnotationDeclaration node, ClassScope scope) {}
	public void endVisit(IfMethodDeclaration node, ClassScope scope) {}
	public void endVisit(InterTypeConstructorDeclaration node, ClassScope scope) {}
	public void endVisit(InterTypeFieldDeclaration node, ClassScope scope) {}
	public void endVisit(InterTypeMethodDeclaration node, ClassScope scope) {}
	public void endVisit(PointcutDeclaration node, ClassScope scope) {}
	public void endVisit(Proceed node, BlockScope scope) {}
	
	// Scope to be determined
	public void endVisit(PointcutDesignator node, Scope scope) {}
	public void endVisit(PseudoToken node, Scope scope) {}
	public void endVisit(IfPseudoToken node, Scope scope) {}
	public void endVisit(PseudoTokens node, Scope scope) {}
	

}
