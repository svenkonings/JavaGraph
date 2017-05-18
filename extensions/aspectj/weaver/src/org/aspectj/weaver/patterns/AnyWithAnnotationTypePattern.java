package org.aspectj.weaver.patterns;

import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.Modifier;
import java.util.Map;

import org.aspectj.util.FuzzyBoolean;
import org.aspectj.weaver.ISourceContext;
import org.aspectj.weaver.ResolvedType;
import org.aspectj.weaver.VersionedDataInputStream;
import org.aspectj.weaver.World;

public /**
 * This type represents a type pattern of '*' but with an annotation specified,
 * e.g. '@Color *'
 */
class AnyWithAnnotationTypePattern extends TypePattern {
	
	public AnyWithAnnotationTypePattern(AnnotationTypePattern atp) {
		super(false,false);
		annotationPattern = atp;
	}

	public Object accept(PatternNodeVisitor visitor, Object data) {
		return visitor.visit(this,data);
	}
	
	protected boolean couldEverMatchSameTypesAs(TypePattern other) {
		return true;
	}

	protected boolean matchesExactly(ResolvedType type) {
		annotationPattern.resolve(type.getWorld());
		boolean b = false;
		if (type.temporaryAnnotationTypes!=null) {
			b = annotationPattern.matches(type,type.temporaryAnnotationTypes).alwaysTrue();
		} else {
			b = annotationPattern.matches(type).alwaysTrue();
		}
		return b;
	}
	
	
	protected boolean matchesExactly(ResolvedType type, ResolvedType annotatedType) {
		annotationPattern.resolve(type.getWorld());
		return annotationPattern.matches(annotatedType).alwaysTrue();		
	}

	public FuzzyBoolean matchesInstanceof(ResolvedType type) {
		if (Modifier.isFinal(type.getModifiers())) {
			return FuzzyBoolean.fromBoolean(matchesExactly(type));
		}
		return FuzzyBoolean.MAYBE;
	}

	public TypePattern parameterizeWith(Map typeVariableMap,World w) {
		AnyWithAnnotationTypePattern ret = new AnyWithAnnotationTypePattern(this.annotationPattern.parameterizeWith(typeVariableMap,w));
		ret.copyLocationFrom(this);
		return ret;
	}
	
	public void write(DataOutputStream s) throws IOException {
		s.writeByte(TypePattern.ANY_WITH_ANNO);
		annotationPattern.write(s);
		writeLocation(s);
	}
	
	public static TypePattern read(VersionedDataInputStream s,ISourceContext c) throws IOException {
		 AnnotationTypePattern annPatt = AnnotationTypePattern.read(s,c);
		 AnyWithAnnotationTypePattern ret = new AnyWithAnnotationTypePattern(annPatt);
		 ret.readLocation(c, s);
		 return ret;
	}

//	public FuzzyBoolean matches(IType type, MatchKind kind) {
//		return FuzzyBoolean.YES;
//	}

	protected boolean matchesSubtypes(ResolvedType type) {
		return true;
	}
	
	public boolean isStar() {
		return false;
	}
	
	public String toString() { return annotationPattern+" *"; }
	
	public boolean equals(Object obj) {
		if  (!(obj instanceof AnyWithAnnotationTypePattern)) return false;
		AnyWithAnnotationTypePattern awatp = (AnyWithAnnotationTypePattern) obj;
		return (annotationPattern.equals(awatp.annotationPattern));
	}
	
	public int hashCode() {
		return annotationPattern.hashCode();
	}
}
