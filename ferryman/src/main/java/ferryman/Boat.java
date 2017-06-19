package ferryman;

import javagraph.annotations.*;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

@Node("Boat")
public class Boat {

    private static final Set<Boat> nodes = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

    private final Set<Bank> moored;
    private final Set<Bank> go;

    public Boat() {
        nodes.add(this);
        moored = new HashSet<>();
        go = new HashSet<>();
    }

    @NodeCreate
    public static Boat getNode() {
        return new Boat();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<Boat> visitNode() {
        return Collections.unmodifiableSet(nodes);
    }

    @EdgeCreate("moored")
    public boolean addMoored(Bank bank) {
        return moored.add(bank);
    }

    @EdgeDelete("moored")
    public boolean removeMoored(Bank bank) {
        return moored.remove(bank);
    }

    @EdgeVisit("moored")
    public Set<Bank> getMoored() {
        return Collections.unmodifiableSet(moored);
    }

    @EdgeCreate("go")
    public boolean addGo(Bank bank) {
        return go.add(bank);
    }

    @EdgeDelete("go")
    public boolean removeGo(Bank bank) {
        return go.remove(bank);
    }

    @EdgeVisit("go")
    public Set<Bank> getGo() {
        return Collections.unmodifiableSet(go);
    }
}
