package ferryman;

import groove.transform.Proof;
import groove.util.parse.FormatException;
import javagraph.JavaMatcher;
import javagraph.graph.JavaGraphException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Ferryman {
    public static void main(String[] args) throws IOException, FormatException {
        // Load the Java graph
        JavaMatcher javagraph = new JavaMatcher("examples/ferryman/ferryman.gps");
        // Print the current graph
        System.out.println(javagraph.getGraph());
        // Read the input
        BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
        String line;
        while ((line = in.readLine()) != null) {
            try {
                // Apply the command
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
            } catch (JavaGraphException e) {
                System.out.println(e.getMessage());
            }
            // Check whether any of the game ending rules match
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
            // Print the current graph
            System.out.println(javagraph.getGraph());
        }
    }
}
