package ferryman;

import javagraph.annotations.*;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

@Node("Wolf")
public class Wolf {

    private static final Set<Wolf> nodes = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

    private final Set<Bank> on;
    private final Set<Boat> in;
    private final Set<Goat> likes;

    public Wolf() {
        nodes.add(this);
        on = new HashSet<>();
        in = new HashSet<>();
        likes = new HashSet<>();
    }

    @NodeCreate
    public static Wolf getNode() {
        return new Wolf();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<Wolf> visitNode() {
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
    public boolean addLikes(Goat goat) {
        return likes.add(goat);
    }

    @EdgeDelete("likes")
    public boolean removeLikes(Goat goat) {
        return likes.remove(goat);
    }

    @EdgeVisit("likes")
    public Set<Goat> getLikes() {
        return Collections.unmodifiableSet(likes);
    }

    @Override
    public String toString() {
        return "Wolf";
    }
}
