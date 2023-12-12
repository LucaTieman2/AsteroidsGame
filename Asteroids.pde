class Asteroid extends Floater {
  protected double rotSpeed;
  public Asteroid () {
    rotSpeed = random(1, 3);
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -14*(int)random(1, 3);
    yCorners[0] = -11*(int)random(1, 3);
    xCorners[1] = 10*(int)random(1, 3);
    yCorners[1] = -11*(int)random(1, 3);
    xCorners[2] = 16*(int)random(1, 3);
    yCorners[2] = 3*(int)random(1, 3);
    xCorners[3] = 9*(int)random(1, 3);
    yCorners[3] = 13*(int)random(1, 3);
    xCorners[4] = -14*(int)random(1, 3);
    yCorners[4] = 11*(int)random(1, 3);
    xCorners[5] = -11*(int)random(1, 3);
    yCorners[5] = 3*(int)random(1, 3);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*3)-1;
    myYspeed = (int)(Math.random()*3)-1;
    myPointDirection = 0;
    myColor = color(165, 42, 42);
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
