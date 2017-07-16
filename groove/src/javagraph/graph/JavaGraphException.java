package javagraph.graph;

/**
 * An exception when an error occurs in the {@link JavaGraph}.
 */
public class JavaGraphException extends RuntimeException {
    /**
     * Creates an exception with the given message and arguments, the message will be formatted using the arguments
     *
     * @param message the given message
     * @param args    the given arguments
     * @see String#format(String, Object...)
     */
    public JavaGraphException(String message, Object... args) {
        super(String.format(message, args));
    }

    /**
     * Creates an exception with the given {@link Throwable}.
     *
     * @param cause the given {@link Throwable}
     */
    public JavaGraphException(Throwable cause) {
        super(cause);
    }
}
