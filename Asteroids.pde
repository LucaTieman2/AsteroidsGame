class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid () {
    rotSpeed = 1;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -14;
    yCorners[0] = -11;
    xCorners[1] = 10;
    yCorners[1] = -11;
    xCorners[2] = 16;
    yCorners[2] = 3;
    xCorners[3] = 9;
    yCorners[3] = 13;
    xCorners[4] = -14;
    yCorners[4] = 11;
    xCorners[5] = -11;
    yCorners[5] = 3;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*3)-1;
    myYspeed = (int)(Math.random()*3)-1;
    myPointDirection = 0;
    myColor = color(128,0,0);
  }
  public void move () {
    turn(rotSpeed);
    super.move();
  }
  
  public void setNumY (double mMew) {
    myCenterY = mMew;
  }
  
  public double getNumY () {
    return myCenterY;
  }
 
  public void setNumX(double nNew) {
    myCenterX = nNew;
  }
  
  public double getNumX() {
    return myCenterX;
  }
}
  
