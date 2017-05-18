package org.aspectj.weaver.patterns;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Map;

import org.aspectj.util.FuzzyBoolean;
import org.aspectj.weaver.AnnotatedElement;
import org.aspectj.weaver.ResolvedType;
import org.aspectj.weaver.World;

public class EllipsisAnnotationTypePattern extends AnnotationTypePattern {

	public FuzzyBoolean matches(AnnotatedElement annotated) {
		return FuzzyBoolean.NO;
	}

	public FuzzyBoolean matches(AnnotatedElement annotated,ResolvedType[] parameterAnnotations) {
		return FuzzyBoolean.NO;
	}

	public void write(DataOutputStream s) throws IOException {
		s.writeByte(AnnotationTypePattern.ELLIPSIS_KEY);
	}

	public void resolve(World world) {
	}

	public String toString() { return ".."; }

    public Object accept(PatternNodeVisitor visitor, Object data) {
        return visitor.visit(this, data);
    }
    
    public AnnotationTypePattern parameterizeWith(Map arg0,World w) {
    	return this;
    }
    
}