class Point{

double x, y;
boolean inCircle;

  public Point(double x, double y, double r){
this.x = x;
this.y = y;
this.inCircle = isInCircle(x, y, r);
  }

  private boolean isInCircle(double x, double y, double r){
    return Math.sqrt((Main.a*0.5-x) * (Main.a*0.5 - x) + (Main.a*0.5 - y) * (Main.a*0.5 - y)) < r;
  }

}
