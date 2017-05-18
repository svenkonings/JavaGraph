package org.aspectj.weaver.patterns;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Map;

import org.aspectj.util.FuzzyBoolean;
import org.aspectj.weaver.ResolvedType;
import org.aspectj.weaver.World;

public class EllipsisTypePattern extends TypePattern {
	
	/**
	 * Constructor for EllipsisTypePattern.
	 * @param includeSubtypes
	 */
	public EllipsisTypePattern() {
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
		s.writeByte(ELLIPSIS_KEY);
	}
	
	public String toString() { return ".."; }
	
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object obj) {
		return (obj instanceof EllipsisTypePattern);
	}
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		return 17 * 37;
	}

    public Object accept(PatternNodeVisitor visitor, Object data) {
        return visitor.visit(this, data);
    }
    
    public TypePattern parameterizeWith(Map typeVariableMap,World w) {
    	return this;
    }


}
