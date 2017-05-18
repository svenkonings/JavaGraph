class Number {

    public static boolean even(int n) {
        if (n == 0)
            return true;
        else
            return odd(n-1);
    }

    public static boolean odd(int n) {
        if (n == 0)
            return false;
        else
            return even(n-1);
    }

}
