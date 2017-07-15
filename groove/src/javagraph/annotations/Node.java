package javagraph.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Indicates that a class can be used as a node. The node class should contain annotated node create, delete and visit
 * methods. The node class can also contain annotated edge methods.
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface Node {
    /** The identifier of the node. **/
    String value();
}
