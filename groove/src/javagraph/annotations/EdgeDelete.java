package javagraph.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Indicates a method can be used to delete edges with the given target and label. The method should be public, have the
 * target node class as parameter and return a boolean whether deletion was succesful.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface EdgeDelete {
    /** The label of this edge. **/
    String value();
}
