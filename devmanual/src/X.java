public class X {
  private Y y;

  public Y getY() {
    // HARMEN: use lazy initialization.
    return y;
  }
}