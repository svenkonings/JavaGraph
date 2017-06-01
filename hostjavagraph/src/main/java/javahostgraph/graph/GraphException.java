package javahostgraph.graph;

public class GraphException extends RuntimeException {
    public GraphException(String message, Object... args) {
        super(String.format(message, args));
    }

    public GraphException(Throwable cause) {
        super(cause);
    }
}
