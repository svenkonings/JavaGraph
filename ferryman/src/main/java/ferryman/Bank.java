package ferryman;

import javagraph.annotations.*;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

@Node("Bank")
public class Bank {

    private static final Set<Bank> nodes = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

    private final Set<Bank> left;
    private final Set<Bank> right;

    public Bank() {
        nodes.add(this);
        left = new HashSet<>();
        right = new HashSet<>();
    }

    @NodeCreate
    public static Bank getNode() {
        return new Bank();
    }

    @NodeDelete
    public boolean removeNode() {
        return nodes.remove(this);
    }

    @NodeVisit
    public static Set<Bank> visitNode() {
        return Collections.unmodifiableSet(nodes);
    }

    @EdgeCreate("flag:left")
    public boolean addLeft(Bank bank) {
        return left.add(bank);
    }

    @EdgeDelete("flag:left")
    public boolean removeLeft(Bank bank) {
        return left.remove(bank);
    }

    @EdgeVisit("flag:left")
    public Set<Bank> getLeft() {
        return Collections.unmodifiableSet(left);
    }

    @EdgeCreate("flag:right")
    public boolean addRight(Bank bank) {
        return right.add(bank);
    }

    @EdgeDelete("flag:right")
    public boolean removeRight(Bank bank) {
        return right.remove(bank);
    }

    @EdgeVisit("flag:right")
    public Set<Bank> getRight() {
        return Collections.unmodifiableSet(right);
    }

    @Override
    public String toString() {
        if (!left.isEmpty() && right.isEmpty()) {
            return "Left bank";
        } else if (left.isEmpty() && !right.isEmpty()) {
            return "Right bank";
        } else {
            return "Bank";
        }
    }
}
