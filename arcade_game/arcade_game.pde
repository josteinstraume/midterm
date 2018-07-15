StarSystem ss;
Star star;
Star[] stars;
int numStars = 400;
ArrayList<GameObject> engine;
boolean wkey, akey, skey, dkey, spacekey;

import processing.opengl.*;

void setup() {
  size(600, 600, P3D);
  smooth();
  stroke(255);
  strokeWeight(5);
  ss = new StarSystem();
  ss.addStar();
  engine = new ArrayList<GameObject>(10000); // Arbitrary number of objects to create
  rectMode(CENTER);
  engine.add(new Ship());
}

void draw() {
  background(0);
  translate(0.5*width, 0.5*height);
  ss.run();
  
  int i = engine.size() - 1;
  while (i >= 0) {
    GameObject obj = engine.get(i);
    obj.show();
    obj.act();
    if (obj.hasDied()) {
      engine.remove(i);
    }
    i--;
  }
}

void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 'a' || key == 'A') akey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'd' || key == 'D') dkey = true;
  if (key == ' ') spacekey = true;
  
}

void keyReleased() {
  //char k = key;
  //k = k.toLowerCase();
   
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 'a' || key == 'A') akey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (key == ' ') spacekey = false;
}
