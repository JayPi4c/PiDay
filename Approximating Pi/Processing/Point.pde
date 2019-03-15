class Point {

  boolean inCircle;
double x, y;
  Point(double x, double y, double r) {
    this.x = x;
    this.y = y;
    inCircle = isInCircle(r);
  }


  private boolean isInCircle(double r) {
    return Math.sqrt(((a*0.5 - x) *(a*0.5 - x)) + ((a * 0.5 - y) * (a * 0.5 - y))) < r;
  }

  void show() {
    stroke((inCircle ? color(0, 255, 0) : color(255, 0, 0)));
    fill((inCircle ? color(0, 255, 0) : color(255, 0, 0)));
    point((float)x, (float)y);
  }
}
