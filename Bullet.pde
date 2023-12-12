class Bullet extends Floater {
  public Bullet (Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    accelerate(6);
  }
  public void show () {
    noStroke();
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move () {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
  }
  public void setNum (double nNum) {
    myCenterX = nNum;
  }
  public void setMum (double nMum) {
    myCenterY = nMum;
  }
  public double getNumX() {
    return myCenterX;
  }
  public double getNumY() {
    return myCenterY;
  }
}
