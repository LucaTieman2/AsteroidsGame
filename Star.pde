class Star { //note that this class does NOT extend Floater
  private int myColor;
  private int showX, showY;
  
  public Star () {
    showX = (int)(Math.random()*500);
    showY = (int)(Math.random()*500);
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random () *256) );
  }
  public void show () {
    fill(myColor);
    noStroke();
    ellipse(showX, showY, 5, 5);
  }
}
