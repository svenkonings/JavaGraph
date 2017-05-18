public class X {
  private Y y;

  public Y getY() {
  	if (y == null) {
  	  y = computeY();
  	}
    return y;
  }

  public Y computeY() {
    if (y == null) {
      y = createY();
    }
    return y;
  }

  public Y createY() {
    return new Y();
  }
}