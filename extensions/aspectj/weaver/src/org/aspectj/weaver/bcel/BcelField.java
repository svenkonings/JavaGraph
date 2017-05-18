/* *******************************************************************
 * Copyright (c) 2002 Palo Alto Research Center, Incorporated (PARC).
 * All rights reserved. 
 * This program and the accompanying materials are made available 
 * under the terms of the Eclipse Public License v1.0 
 * which accompanies this distribution and is available at 
 * http://www.eclipse.org/legal/epl-v10.html 
 *  
 * Contributors: 
 *     PARC     initial implementation 
 * ******************************************************************/

package org.aspectj.weaver.bcel;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import org.aspectj.apache.bcel.classfile.Attribute;
import org.aspectj.apache.bcel.classfile.ConstantPool;
import org.aspectj.apache.bcel.classfile.Field;
import org.aspectj.apache.bcel.classfile.GenericSignatureParser;
import org.aspectj.apache.bcel.classfile.Signature;
import org.aspectj.apache.bcel.classfile.Synthetic;
import org.aspectj.apache.bcel.classfile.annotation.AnnotationGen;
import org.aspectj.apache.bcel.generic.FieldGen;
import org.aspectj.weaver.AjAttribute;
import org.aspectj.weaver.AnnotationAJ;
import org.aspectj.weaver.BCException;
import org.aspectj.weaver.ResolvedMemberImpl;
import org.aspectj.weaver.ResolvedType;
import org.aspectj.weaver.UnresolvedType;
import org.aspectj.weaver.World;
import org.aspectj.weaver.AjAttribute.WeaverVersionInfo;
import org.aspectj.weaver.bcel.BcelGenericSignatureToTypeXConverter.GenericSignatureFormatException;

final class BcelField extends ResolvedMemberImpl {

	private static int AccSynthetic = 0x1000;

	private Field field;
	private boolean isAjSynthetic;
	private boolean isSynthetic = false;
	private AnnotationAJ[] annotations;
	private World world;
	private BcelObjectType bcelObjectType;
	private UnresolvedType genericFieldType = null;
	private boolean unpackedGenericSignature = false;
	private boolean annotationsAdded = false;

	BcelField(BcelObjectType declaringType, Field field) {
		super(FIELD, declaringType.getResolvedTypeX(), field.getModifiers(), field.getName(), field.getSignature());
		this.field = field;
		this.world = declaringType.getResolvedTypeX().getWorld();
		this.bcelObjectType = declaringType;
		unpackAttributes(world);
		checkedExceptions = UnresolvedType.NONE;
	}

	/**
	 * Constructs an instance that wrappers a Field object, but where we do not (yet) have a BcelObjectType - usually because the
	 * containing type (and this field) are being constructed at runtime (so there is no .class file to retrieve).
	 */
	BcelField(String declaringTypeName, Field field, World world) {
		super(FIELD, UnresolvedType.forName(declaringTypeName), field.getModifiers(), field.getName(), field.getSignature());
		this.field = field;
		this.world = world;
		this.bcelObjectType = null;
		unpackAttributes(world);
		checkedExceptions = UnresolvedType.NONE;
	}

	// ----

	private void unpackAttributes(World world) {
		Attribute[] attrs = field.getAttributes();
		if (attrs != null && attrs.length > 0) {
			List as = Utility.readAjAttributes(getDeclaringType().getClassName(), attrs, getSourceContext(world), world,
					(bcelObjectType != null ? bcelObjectType.getWeaverVersionAttribute() : WeaverVersionInfo.CURRENT));
			as.addAll(AtAjAttributes.readAj5FieldAttributes(field, this, world.resolve(getDeclaringType()),
					getSourceContext(world), world.getMessageHandler()));

			for (Iterator iter = as.iterator(); iter.hasNext();) {
				AjAttribute a = (AjAttribute) iter.next();
				if (a instanceof AjAttribute.AjSynthetic) {
					isAjSynthetic = true;
				} else {
					throw new BCException("weird field attribute " + a);
				}
			}
		}
		isAjSynthetic = false;

		for (int i = attrs.length - 1; i >= 0; i--) {
			if (attrs[i] instanceof Synthetic)
				isSynthetic = true;
		}

		// in 1.5, synthetic is a modifier, not an attribute
		if ((field.getModifiers() & AccSynthetic) != 0) {
			isSynthetic = true;
		}

	}

	public boolean isAjSynthetic() {
		return isAjSynthetic; // || getName().startsWith(NameMangler.PREFIX);
	}

	public boolean isSynthetic() {
		return isSynthetic;
	}

	public boolean hasAnnotation(UnresolvedType ofType) {
		ensureAnnotationTypesRetrieved();
		for (Iterator iter = annotationTypes.iterator(); iter.hasNext();) {
			ResolvedType aType = (ResolvedType) iter.next();
			if (aType.equals(ofType))
				return true;
		}
		return false;
	}

	public ResolvedType[] getAnnotationTypes() {
		ensureAnnotationTypesRetrieved();
		ResolvedType[] ret = new ResolvedType[annotationTypes.size()];
		annotationTypes.toArray(ret);
		return ret;
	}

	public AnnotationAJ[] getAnnotations() {
		ensureAnnotationTypesRetrieved();
		return annotations;
	}

	public AnnotationAJ getAnnotationOfType(UnresolvedType ofType) {
		ensureAnnotationTypesRetrieved();
		for (int i = 0; i < annotations.length; i++) {
			if (annotations[i].getTypeName().equals(ofType.getName()))
				return annotations[i];
		}
		return null;
	}

	private void ensureAnnotationTypesRetrieved() {
		if (annotationTypes == null) {
			AnnotationGen annos[] = field.getAnnotations();
			if (annos == null || annos.length == 0) {
				annotationTypes = Collections.EMPTY_SET;
				annotations = AnnotationAJ.EMPTY_ARRAY;
			} else {
				annotationTypes = new HashSet();
				annotations = new AnnotationAJ[annos.length];
				for (int i = 0; i < annos.length; i++) {
					AnnotationGen annotation = annos[i];
					annotationTypes.add(world.resolve(UnresolvedType.forSignature(annotation.getTypeSignature())));
					annotations[i] = new BcelAnnotation(annotation, world);
				}
			}
		}
	}

	public void addAnnotation(AnnotationAJ annotation) {
		ensureAnnotationTypesRetrieved();
		// Add it to the set of annotations
		int len = annotations.length;
		AnnotationAJ[] ret = new AnnotationAJ[len + 1];
		System.arraycopy(annotations, 0, ret, 0, len);
		ret[len] = annotation;
		annotations = ret;

		if (annotationTypes == Collections.EMPTY_SET) {
			annotationTypes = new HashSet();
		}
		// Add it to the set of annotation types
		String typename = annotation.getTypeSignature();
		annotationTypes.add(UnresolvedType.forSignature(typename).resolve(world));
		annotationsAdded = true;
	}

	/**
	 * Unpack the generic signature attribute if there is one and we haven't already done so, then find the true field type of this
	 * field (eg. List<String>).
	 */
	public UnresolvedType getGenericReturnType() {
		unpackGenericSignature();
		return genericFieldType;
	}

	public Field getFieldAsIs() {
		return field;
	}

	// FIXME asc badly performing code ftw !
	public Field getField(ConstantPool cpg) {
		if (!annotationsAdded)
			return field;
		FieldGen fg = new FieldGen(field, cpg);
		AnnotationGen[] alreadyHas = fg.getAnnotations();
		if (annotations != null) {
			for (int i = 0; i < annotations.length; i++) {
				AnnotationAJ array_element = annotations[i];
				boolean alreadyHasIt = false;
				for (int j = 0; j < alreadyHas.length; j++) {
					AnnotationGen gen = alreadyHas[j];
					if (gen.getTypeName().equals(array_element.getTypeName()))
						alreadyHasIt = true;
				}
				if (!alreadyHasIt)
					fg.addAnnotation(new AnnotationGen(((BcelAnnotation) array_element).getBcelAnnotation(), cpg, true));
			}
		}
		field = fg.getField();
		annotationsAdded = false; // we are now correct again
		return field;
	}

	private void unpackGenericSignature() {
		if (unpackedGenericSignature) {
			return;
		}
		if (!world.isInJava5Mode()) {
			this.genericFieldType = getReturnType();
			return;
		}
		unpackedGenericSignature = true;
		String gSig = field.getGenericSignature();
		if (gSig != null) {
			// get from generic
			Signature.FieldTypeSignature fts = new GenericSignatureParser().parseAsFieldSignature(gSig);
			Signature.ClassSignature genericTypeSig = bcelObjectType.getGenericClassTypeSignature();

			Signature.FormalTypeParameter[] parentFormals = bcelObjectType.getAllFormals();
			Signature.FormalTypeParameter[] typeVars = ((genericTypeSig == null) ? new Signature.FormalTypeParameter[0]
					: genericTypeSig.formalTypeParameters);
			Signature.FormalTypeParameter[] formals = new Signature.FormalTypeParameter[parentFormals.length + typeVars.length];
			// put method formal in front of type formals for overriding in
			// lookup
			System.arraycopy(typeVars, 0, formals, 0, typeVars.length);
			System.arraycopy(parentFormals, 0, formals, typeVars.length, parentFormals.length);

			try {
				genericFieldType = BcelGenericSignatureToTypeXConverter.fieldTypeSignature2TypeX(fts, formals, world);
			} catch (GenericSignatureFormatException e) {
				// development bug, fail fast with good info
				throw new IllegalStateException("While determing the generic field type of " + this.toString()
						+ " with generic signature " + gSig + " the following error was detected: " + e.getMessage());
			}
		} else {
			genericFieldType = getReturnType();
		}
	}

	public void evictWeavingState() {
		if (field != null) {
			unpackGenericSignature();
			unpackAttributes(world);
			ensureAnnotationTypesRetrieved();
			// this.sourceContext = SourceContextImpl.UNKNOWN_SOURCE_CONTEXT;
			field = null;
		}
	}
}