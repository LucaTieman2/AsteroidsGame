Spaceship bob = new Spaceship ();
Star sob [];
public void setup () {
  size(500,500);
  background(0);
  sob = new Star [200];
  for (int i=0; i<sob.length; i++)
  {
    sob [i]= new Star ();
  }
}

public void keyPressed () {
  if (key == 'a' || key == 'A') {
    bob.turn(-20);
  }
  if ((key == 'd' || key == 'D') && (key != 'w' || key != 'W')) {
    bob.turn(20);
  }
  if (key == 'w' || key == 'W') {
    bob.accelerate(0.03);
  }
  if (key == 's' || key == 'S') {
    bob.accelerate(-0.03);
  }
  if (key == 'h' || key == 'H')
  {
   bob.hyperspace();
  }
}

public void draw () {
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < sob.length; i++) {
    sob[i].show();
  }
}
