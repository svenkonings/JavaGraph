package javagraph.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Indicates a method can be used to create new edges with the given target and label. The method should be public, have no parameters and
 * return the target node class in which the method is defined.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface EdgeCreate {
    /** The label of this edge. **/
    String value();
}
