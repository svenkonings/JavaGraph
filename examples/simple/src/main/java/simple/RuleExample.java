package simple;

import groove.util.parse.FormatException;
import javagraph.JavaMatcher;

import java.io.IOException;

public class RuleExample {
    public static void main(String[] args) throws IOException, FormatException {
        JavaMatcher matcher = new JavaMatcher("examples/simple/simple.gps");
        System.out.println(matcher.getGrammar().getStartGraph());
        matcher.applyMatch("test");
        System.out.println(matcher.getGrammar().getStartGraph());
    }
}
