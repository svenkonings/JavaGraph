package ferryman;

import javagraph.annotations.*;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

@Node("Cabbage")
public class Cabbage {

    private static final Set<Cabbage> nodes = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

    private final Set<Bank> on;
    private final Set<Boat> in;

    public Cabbage() {
        nodes.add(this);
        on = new HashSet<>();
        in = new HashSet<>();
    }

    @NodeCreate
    public static Cabbage getNode() {
        return new Cabbage();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<Cabbage> visitNode() {
        return Collections.unmodifiableSet(nodes);
    }

    @EdgeCreate("on")
    public boolean addOn(Bank bank) {
        return on.add(bank);
    }

    @EdgeDelete("on")
    public boolean removeOn(Bank bank) {
        return on.remove(bank);
    }

    @EdgeVisit("on")
    public Set<Bank> getOn() {
        return Collections.unmodifiableSet(on);
    }

    @EdgeCreate("in")
    public boolean addIn(Boat boat) {
        return in.add(boat);
    }

    @EdgeDelete("in")
    public boolean removeIn(Boat boat) {
        return in.remove(boat);
    }

    @EdgeVisit("in")
    public Set<Boat> getIn() {
        return Collections.unmodifiableSet(in);
    }

    @Override
    public String toString() {
        return "Cabbage";
    }
}
