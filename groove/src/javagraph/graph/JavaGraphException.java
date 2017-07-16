package javagraph.graph;

public class JavaGraphException extends RuntimeException {
    public JavaGraphException(String message, Object... args) {
        super(String.format(message, args));
    }

    public JavaGraphException(Throwable cause) {
        super(cause);
    }
}
