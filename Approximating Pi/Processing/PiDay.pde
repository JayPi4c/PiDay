import java.text.NumberFormat;

long NAlle;
long NinKreis;
double a = 500;
double r;

long skips = 10000;

NumberFormat myNF = NumberFormat.getInstance();

void setup() {
  size(500, 520);
  r = a*0.5;

  NAlle = 0;
  NinKreis = 0;
  myNF.setMaximumFractionDigits(10);
  myNF.setMinimumFractionDigits(10);
  myNF.setMaximumIntegerDigits(1);
  myNF.setMinimumIntegerDigits(1);
  background(51);
  stroke(100, 255, 100);
  noFill();
  circle((float)(a * 0.5), (float)( a * 0.5), (float) (r *2));
}

void draw() {

  for (int i = 0; i < skips; i++) {
    double newX = Math.random() * a;
    double newY = Math.random() * a;
    Point p = new Point(newX, newY, r);
    NAlle++;
    if (p.inCircle)
      NinKreis++;
    p.show();
  }

  double pi = (NinKreis * a * a) / (NAlle * a * a / 4);
  fill(51);
  noStroke();
  rect(0, (float)(a+1), (float)a, 20);
  textAlign(CENTER, CENTER);
  fill(255);
  text("Pi: " + myNF.format(pi), (float)(a * 0.5), (float)(a + 10));
} 
