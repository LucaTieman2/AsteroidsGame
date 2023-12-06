class Spaceship extends Floater {  
  public Spaceship () {
    corners = 4;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = color(255, 255, 255);
    myCenterY = 250;
    myCenterX = 250;
    myXspeed = 1;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    super.turn(myPointDirection);
  }
  public void setMyY (double mMew) {
    myCenterY = mMew;
  }
  public double getY () {
    return myCenterY;
  }
  public void setMyX (double nNew) {
    myCenterX = nNew;
  }
  public double getX () {
    return myCenterX;
  }
}
