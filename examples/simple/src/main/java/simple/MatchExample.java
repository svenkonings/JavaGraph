package simple;

import groove.util.parse.FormatException;
import javagraph.JavaMatcher;

import java.io.IOException;

public class MatchExample {
    public static void main(String[] args) throws IOException, FormatException {
        // Load the Java graph
        JavaMatcher matcher = new JavaMatcher("examples/simple/simple.gps");
        // Print the current graph
        System.out.println(matcher.getGraph());
        // Apply the test rule (see the GROOVE grammar)
        matcher.applyMatch("test");
        // Print the current graph
        System.out.println(matcher.getGraph());
    }
}
