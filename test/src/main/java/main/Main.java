package main;

import groove.util.parse.FormatException;
import javagraph.JavaGraph;

import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException, FormatException {
        JavaGraph javagraph = new JavaGraph("C:\\Users\\Sven\\Documents\\GitHub\\Groove\\grammars\\newGrammar.gps");
        javagraph.applyMatch("test");
    }
}
