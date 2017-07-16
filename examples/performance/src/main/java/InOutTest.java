import javagraph.JavaMatcher;
import javagraph.graph.JavaNode;

import java.util.ArrayList;
import java.util.List;

public class InOutTest {
    public static final int TIMES = 40;
    public static final int AMOUNT = 50;

    public static void main(String[] args) throws Exception {
        List<Long> inTimeSmall = new ArrayList<>();
        List<Long> outTimeSmall = new ArrayList<>();
        List<Long> inTimeLarge = new ArrayList<>();
        List<Long> outTimeLarge = new ArrayList<>();
        for (int i = 0; i < TIMES; i++) {
            JavaMatcher matcher = new JavaMatcher("examples/performance/performance.gps");
            JavaNode node = matcher.getGraph().visitNodes().iterator().next();
            matcher.getGraph().inEdgeSet(node);
            matcher.getGraph().outEdgeSet(node);
            {
                long inStart = System.nanoTime();
                matcher.getGraph().inEdgeSet(node);
                long inEnd = System.nanoTime();
                inTimeSmall.add(inEnd - inStart);
                long outStart = System.nanoTime();
                matcher.getGraph().outEdgeSet(node);
                long outEnd = System.nanoTime();
                outTimeSmall.add(outEnd - outStart);
            }
            for (int j = 0; j < AMOUNT; j++) {
                matcher.applyMatch("rule");
            }
            matcher.getGraph().inEdgeSet(node);
            matcher.getGraph().outEdgeSet(node);
            {
                long inStart = System.nanoTime();
                matcher.getGraph().inEdgeSet(node);
                long inEnd = System.nanoTime();
                inTimeLarge.add(inEnd - inStart);
                long outStart = System.nanoTime();
                matcher.getGraph().outEdgeSet(node);
                long outEnd = System.nanoTime();
                outTimeLarge.add(outEnd - outStart);
            }
            SimpleNode.nodes.clear();
        }
        double inSmallAvg = inTimeSmall.stream().mapToLong(Long::longValue).skip(AMOUNT / 2).average().orElse(0);
        double outSmallAvg = outTimeSmall.stream().mapToLong(Long::longValue).skip(AMOUNT / 2).average().orElse(0);
        double inLargeAvg = inTimeLarge.stream().mapToLong(Long::longValue).skip(AMOUNT / 2).average().orElse(0);
        double outLargeAvg = outTimeLarge.stream().mapToLong(Long::longValue).skip(AMOUNT / 2).average().orElse(0);
        System.out.println("InTimeSmall=" + inTimeSmall + ", avg=" + inSmallAvg);
        System.out.println("OutTimeSmall=" + outTimeSmall + ", avg=" + outSmallAvg);
        System.out.println("InTimeLarge=" + inTimeLarge + ", avg=" + inLargeAvg);
        System.out.println("OutTimeLarge=" + outTimeLarge + ", avg=" + outLargeAvg);
    }
}
