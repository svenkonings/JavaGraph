package javagraph.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Indicates a method can be used to visit edges with the given target and label. The method should be public, have no
 * parameters and return a set of the target node class.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface EdgeVisit {
    /** The label of this edge. **/
    String value();
}
