package main;

import groove.transform.Proof;
import groove.util.parse.FormatException;
import javagraph.JavaGraph;
import javagraph.graph.GraphException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException, FormatException {
        JavaGraph javagraph = new JavaGraph("C:\\Users\\Sven\\Documents\\GitHub\\Groove\\grammars\\ferryman-typed.gps");
        BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
        String line;
        System.out.println(javagraph.getGraph());
        while ((line = in.readLine()) != null) {
            try {
                switch (line) {
                    case "go":
                        javagraph.applyMatch("go-empty");
                        javagraph.applyMatch("arrive-empty");
                        break;
                    case "cabbage":
                        javagraph.applyMatch("load-cabbage");
                        javagraph.applyMatch("unload-cabbage");
                        break;
                    case "goat":
                        javagraph.applyMatch("load-goat");
                        javagraph.applyMatch("unload-goat");
                        break;
                    case "wolf":
                        javagraph.applyMatch("load-wolf");
                        javagraph.applyMatch("unload-wolf");
                        break;
                }
            } catch (GraphException e) {
                System.out.println(e.getMessage());
            }
            Proof match;
            match = javagraph.findMatch("eat-cabbage");
            if (match != null) {
                javagraph.applyMatch(match);
                System.out.println("Cabbage eaten");
                break;
            }
            match = javagraph.findMatch("eat-goat");
            if (match != null) {
                javagraph.applyMatch(match);
                System.out.println("Goat eaten");
                break;
            }
            match = javagraph.findMatch("final");
            if (match != null) {
                System.out.println("Game finished");
                break;
            }
            System.out.println(javagraph.getGraph());
        }
    }
}
