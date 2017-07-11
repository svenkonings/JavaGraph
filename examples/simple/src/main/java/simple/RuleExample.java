package simple;

import groove.util.parse.FormatException;
import javagraph.JavaGraph;

import java.io.IOException;

public class RuleExample {
    public static void main(String[] args) throws IOException, FormatException {
        JavaGraph javagraph = new JavaGraph("simple.gps");
        System.out.println(javagraph.getGrammar().getStartGraph());
        javagraph.applyMatch("test");
        System.out.println(javagraph.getGrammar().getStartGraph());
    }
}
