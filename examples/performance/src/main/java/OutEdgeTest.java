import groove.explore.Generator;
import javagraph.JavaGraph;

import java.util.ArrayList;
import java.util.List;

public class OutEdgeTest {
    public static final int TIMES = 10;
    public static final int AMOUNT = 50;

    public static void main(String[] args) throws Exception {
        List<Long> javaTime = new ArrayList<>();
        List<Long> grooveTime = new ArrayList<>();
        for (int i = 0; i < TIMES; i++) {
            JavaGraph javagraph = new JavaGraph("performance.gps");
            long javaStart = System.nanoTime();
            for (int j = 0; j < AMOUNT; j++) {
                javagraph.applyMatch("rule");
            }
            long javaEnd = System.nanoTime();
            javaTime.add(javaEnd - javaStart);
            SimpleNode.nodes.clear();
            Generator generator = new Generator("-r=" + AMOUNT, "-s=linear", "-a=any", "performance.gps");
            long grooveStart = System.nanoTime();
            generator.start();
            long grooveEnd = System.nanoTime();
            grooveTime.add(grooveEnd - grooveStart);
        }
        double javaAvg = javaTime.stream().mapToLong(Long::longValue).skip(TIMES / 2).average().orElse(0);
        double grooveAvg = grooveTime.stream().mapToLong(Long::longValue).skip(TIMES / 2).average().orElse(0);
        System.out.println("JavaTime=" + javaTime + ", avg=" + javaAvg);
        System.out.println("GrooveTime=" + grooveTime + ", avg=" + grooveAvg);
    }
}
