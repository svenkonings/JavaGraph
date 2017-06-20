package main;

import groove.util.parse.FormatException;
import javagraph.JavaGraph;

import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException, FormatException {
        JavaGraph javagraph = new JavaGraph("C:\\Users\\Sven\\Documents\\GitHub\\Groove\\grammars\\ferryman-typed.gps");
        System.out.println(javagraph.getGraph());
        System.out.println(javagraph.getRuleNames());
//        javagraph.applyMatch("go-empty");
//        System.out.println(javagraph.getGraph());
//        javagraph.applyMatch("arrive-empty");
//        System.out.println(javagraph.getGraph());
//        javagraph.applyMatch("go-empty");
//        System.out.println(javagraph.getGraph());
//        javagraph.applyMatch("arrive-empty");
//        System.out.println(javagraph.getGraph());
        javagraph.applyMatch("load-cabbage");
        System.out.println(javagraph.getGraph());
        javagraph.applyMatch("unload-cabbage");
        System.out.println(javagraph.getGraph());
//        javagraph.applyMatch("eat-goat");
//        System.out.println(javagraph.getGraph());
    }
}
