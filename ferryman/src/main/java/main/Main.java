package main;

import groove.util.parse.FormatException;
import javagraph.JavaGraph;

import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException, FormatException {
        JavaGraph javagraph = new JavaGraph("C:\\Users\\Sven\\Documents\\GitHub\\Groove\\grammars\\ferryman-typed.gps");
        System.out.println(javagraph.getGrammar().getStartGraph());
//        javagraph.applyMatch("go-empty");
        javagraph.applyMatch("load-cabbage");
//        javagraph.applyMatch("load-goat");
//        javagraph.applyMatch("load-wolf");
        System.out.println(javagraph.getGrammar().getStartGraph());
    }
}
