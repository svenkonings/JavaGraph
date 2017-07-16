import groove.explore.Generator;
import javagraph.JavaMatcher;

import java.util.ArrayList;
import java.util.List;

public class OutEdgeTest {
    public static final int TIMES = 10;
    public static final int AMOUNT = 50;

    public static void main(String[] args) throws Exception {
        List<Long> javaTime = new ArrayList<>();
        List<Long> grooveTime = new ArrayList<>();
        // For the specified amount of times
        for (int i = 0; i < TIMES; i++) {
            // Load the Java graph
            JavaMatcher matcher = new JavaMatcher("examples/performance/performance.gps");
            long javaStart = System.nanoTime();
            // Apply the rule (which adds a node to the end of a line of nodes) the specified amount of times
            for (int j = 0; j < AMOUNT; j++) {
                matcher.applyMatch("rule");
            }
            long javaEnd = System.nanoTime();
            // Record the time it took
            javaTime.add(javaEnd - javaStart);
            SimpleNode.nodes.clear();
            // Load the GROOVE generator
            Generator generator = new Generator("-r=" + AMOUNT, "-s=linear", "-a=any", "examples/performance/performance.gps");
            long grooveStart = System.nanoTime();
            // Apply the rule (which adds a node to the end of a line of nodes) the specified amount of times
            generator.start();
            long grooveEnd = System.nanoTime();
            // Record the time it took
            grooveTime.add(grooveEnd - grooveStart);
        }
        // Calculate the averages, ignoring the first half of the results
        double javaAvg = javaTime.stream().mapToLong(Long::longValue).skip(TIMES / 2).average().orElse(0);
        double grooveAvg = grooveTime.stream().mapToLong(Long::longValue).skip(TIMES / 2).average().orElse(0);
        // Print the results
        System.out.println("JavaTime=" + javaTime + ", avg=" + javaAvg);
        System.out.println("GrooveTime=" + grooveTime + ", avg=" + grooveAvg);
    }
}
