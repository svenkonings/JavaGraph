package ferryman;

import javagraph.annotations.*;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

@Node("Goat")
public class Goat {

    private static final Set<Goat> nodes = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

    private final Set<Bank> on;
    private final Set<Boat> in;
    private final Set<Cabbage> likes;

    public Goat() {
        nodes.add(this);
        on = new HashSet<>();
        in = new HashSet<>();
        likes = new HashSet<>();
    }

    @NodeCreate
    public static Goat getNode() {
        return new Goat();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<Goat> visitNode() {
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

    @EdgeCreate("likes")
    public boolean addLikes(Cabbage cabbage) {
        return likes.add(cabbage);
    }

    @EdgeDelete("likes")
    public boolean removeLikes(Cabbage cabbage) {
        return likes.remove(cabbage);
    }

    @EdgeVisit("likes")
    public Set<Cabbage> getLikes() {
        return Collections.unmodifiableSet(likes);
    }

    @Override
    public String toString() {
        return "Goat";
    }
}
