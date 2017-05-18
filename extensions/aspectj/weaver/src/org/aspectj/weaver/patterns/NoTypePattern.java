package org.aspectj.weaver.patterns;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Map;

import org.aspectj.util.FuzzyBoolean;
import org.aspectj.weaver.ResolvedType;
import org.aspectj.weaver.World;

public class NoTypePattern extends TypePattern {
	
	public NoTypePattern() {
		super(false,false,new TypePatternList());
	}

	
	/* (non-Javadoc)
	 * @see org.aspectj.weaver.patterns.TypePattern#couldEverMatchSameTypesAs(org.aspectj.weaver.patterns.TypePattern)
	 */
	protected boolean couldEverMatchSameTypesAs(TypePattern other) {
		return false;
	}
	/**
	 * @see org.aspectj.weaver.patterns.TypePattern#matchesExactly(IType)
	 */
	protected boolean matchesExactly(ResolvedType type) {
		return false;
	}
	
	protected boolean matchesExactly(ResolvedType type, ResolvedType annotatedType) {
		return false;
	}

	/**
	 * @see org.aspectj.weaver.patterns.TypePattern#matchesInstanceof(IType)
	 */
	public FuzzyBoolean matchesInstanceof(ResolvedType type) {
		return FuzzyBoolean.NO;
	}

	/**
	 * @see org.aspectj.weaver.patterns.PatternNode#write(DataOutputStream)
	 */
	public void write(DataOutputStream s) throws IOException {
		s.writeByte(NO_KEY);
	}

	/**
	 * @see org.aspectj.weaver.patterns.TypePattern#matches(IType, MatchKind)
	 */
//	public FuzzyBoolean matches(IType type, MatchKind kind) {
//		return FuzzyBoolean.YES;
//	}

	/**
	 * @see org.aspectj.weaver.patterns.TypePattern#matchesSubtypes(IType)
	 */
	protected boolean matchesSubtypes(ResolvedType type) {
		return false;
	}
	
	
	public boolean isStar() {
		return false;
	}
	
	public String toString() { return "<nothing>"; }//FIXME AV - bad! toString() cannot be parsed back (not idempotent)
	
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object obj) {
		return (obj instanceof NoTypePattern);
	}
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		return 17 * 37 * 37;
	}

    public Object accept(PatternNodeVisitor visitor, Object data) {
        return visitor.visit(this, data);
    }
    
    public TypePattern parameterizeWith(Map arg0,World w) {
    	return this;
    }
}