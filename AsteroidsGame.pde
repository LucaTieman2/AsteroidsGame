Spaceship bob = new Spaceship ();
ArrayList <Asteroid> theList = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
Star sob [];
public void setup () {
  size(500,500);
  background(0);
  sob = new Star [200];
  for (int i = 0; i < sob.length; i++) {
    sob[i] = new Star();
  }
  for (int nI = 0; nI < 10; nI++) {
     theList.add(new Asteroid());
  }
}

public void keyPressed () {
  if (key == 'a' || key == 'A' && (key != 'w' || key != 'W')) {
    bob.turn(-20);
  }
  if ((key == 'd' || key == 'D') && (key != 'w' || key != 'W')) {
    bob.turn(20);
  }
  if (key == 'w' || key == 'W') {
    bob.accelerate(0.06);
  }
  if (key == 's' || key == 'S') {
    bob.accelerate(-0.06);
  }
  if (key == 'h' || key == 'H')
  {
   bob.hyperspace();
  }
  if (key == ' ') {
    shots.add(new Bullet(bob));
  }
}

public void draw () {
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < sob.length; i++) {
    sob[i].show();
  }
  for (int f = 0; f < theList.size(); f++) {
    theList.get(f).show();
    theList.get(f).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)theList.get(f).getNumX(), (float)theList.get(f).getNumY());
    if (d < 30) {
      theList.remove(f);
    }
  }
  for (int j = 0; j < shots.size(); j++) {
    shots.get(j).move();
    shots.get(j).show();
  } 
  for (int nI = 0; nI < shots.size(); nI++) {
    for (int z = 0; z < theList.size(); z++) {
      float b = dist((float)theList.get(z).getNumX(), (float)theList.get(z).getNumY(), (float)shots.get(nI).getNumX(), (float)shots.get(nI).getNumY());
      if (b < 30) {
        theList.remove(z);
        shots.remove(nI);
        break;
      }
    }
  }
}
