package org.aspectj.weaver.patterns;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Map;

import org.aspectj.util.FuzzyBoolean;
import org.aspectj.weaver.ResolvedType;
import org.aspectj.weaver.World;

public class AnyTypePattern extends TypePattern {
	
	/**
	 * Constructor for EllipsisTypePattern.
	 * @param includeSubtypes
	 */
	public AnyTypePattern() {
		super(false,false,new TypePatternList());
	}

	/* (non-Javadoc)
	 * @see org.aspectj.weaver.patterns.TypePattern#couldEverMatchSameTypesAs(org.aspectj.weaver.patterns.TypePattern)
	 */
	protected boolean couldEverMatchSameTypesAs(TypePattern other) {
		return true;
	}
	/**
	 * @see org.aspectj.weaver.patterns.TypePattern#matchesExactly(IType)
	 */
	protected boolean matchesExactly(ResolvedType type) {
		return true;
	}

	protected boolean matchesExactly(ResolvedType type, ResolvedType annotatedType) {
		return true;
	}
	
	/**
	 * @see org.aspectj.weaver.patterns.TypePattern#matchesInstanceof(IType)
	 */
	public FuzzyBoolean matchesInstanceof(ResolvedType type) {
		return FuzzyBoolean.YES;
	}

	/**
	 * @see org.aspectj.weaver.patterns.PatternNode#write(DataOutputStream)
	 */
	public void write(DataOutputStream s) throws IOException {
		s.writeByte(ANY_KEY);
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
		return true;
	}
	
	
	public boolean isStar() {
		return true;
	}
	
	public String toString() { return "*"; }
	
	public boolean equals(Object obj) {
		return (obj instanceof AnyTypePattern);
	}
	
	public int hashCode() {
		return 37;
	}

    public Object accept(PatternNodeVisitor visitor, Object data) {
        return visitor.visit(this, data);
    }
    
    public TypePattern parameterizeWith(Map arg0,World w) {
    	return this;
    }
}

