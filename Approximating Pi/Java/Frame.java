import javax.swing.*;

class Frame extends JFrame{

DesignPanel dPanel;
TextPanel tPanel;

  public Frame(){
    super("Approximating Pi");
    setLayout(new BoxLayout(this.getContentPane(), BoxLayout.Y_AXIS));
    dPanel  = new DesignPanel();
    add(dPanel);
    tPanel = new TextPanel();
    add(tPanel);
    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    pack();
    setVisible(true);
  }




}
