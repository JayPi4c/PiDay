import javax.swing.JPanel;
import java.awt.*;

class TextPanel extends JPanel{

public TextPanel(){
  setBackground(Color.GREEN);
  setPreferredSize(new Dimension(Main.a, 40));
  setVisible(true);
}

public void paint(Graphics g){
  g.setColor(Color.WHITE);
  g.drawString(calculatePi(3, 2) + "", Main.a, 20);
  System.out.println("repaint");
}


double calculatePi(long NAlle, long NinKreis){
  double pi = (NinKreis * Main.a * Main.a) / (NAlle * Main.a * Main.a * 0.25);
  return pi;
}


}
