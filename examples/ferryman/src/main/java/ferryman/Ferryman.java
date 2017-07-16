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
        JavaMatcher matcher = new JavaMatcher("examples/ferryman/ferryman.gps");
        // Print the current graph
        System.out.println(matcher.getGraph());
        // Read the input
        BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
        String line;
        while ((line = in.readLine()) != null) {
            try {
                // Apply the command
                switch (line) {
                    case "go":
                        matcher.applyMatch("go-empty");
                        matcher.applyMatch("arrive-empty");
                        break;
                    case "cabbage":
                        matcher.applyMatch("load-cabbage");
                        matcher.applyMatch("unload-cabbage");
                        break;
                    case "goat":
                        matcher.applyMatch("load-goat");
                        matcher.applyMatch("unload-goat");
                        break;
                    case "wolf":
                        matcher.applyMatch("load-wolf");
                        matcher.applyMatch("unload-wolf");
                        break;
                }
            } catch (JavaGraphException e) {
                System.out.println(e.getMessage());
            }
            // Check whether any of the game ending rules match
            Proof match;
            match = matcher.findMatch("eat-cabbage");
            if (match != null) {
                matcher.applyMatch(match);
                System.out.println("Cabbage eaten");
                break;
            }
            match = matcher.findMatch("eat-goat");
            if (match != null) {
                matcher.applyMatch(match);
                System.out.println("Goat eaten");
                break;
            }
            match = matcher.findMatch("final");
            if (match != null) {
                System.out.println("Game finished");
                break;
            }
            // Print the current graph
            System.out.println(matcher.getGraph());
        }
    }
}
