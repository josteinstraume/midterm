/*
 MSDS 6390 Assignment 8: Midterm
 Arcade Game- Space Shooter
 Team: Jostein Barry-Straume, Brian Yu
 Date: 07/13/18
 Sources:
 https://www.youtube.com/watch?v=MJh3blPxcQw
 */
 
color lightblue = #67D4FF;
color darkblue = #2F6A96;
color orange = #EE7036;
color spacecadet = #1D2951; // https://rgbcolorcode.com/color/space-cadet
color electricgreen = #00E600;
color outerspace = #414A4C;
color deepspacesparkle = #4A646C;
color fireenginered = #CE2029;

Ship myShip;
StarSystem ss;
Star star;
Star[] stars;

int numStars = 400;
int timer = 0;
ArrayList<GameObject> engine;
boolean wkey, akey, skey, dkey, qkey, ekey, spacekey;



import processing.opengl.*;

void setup() {
  size(600, 600, P3D);
  smooth();
  stroke(0);
  strokeWeight(1);
  ss = new StarSystem();
  ss.addStar();
  engine = new ArrayList<GameObject>(10000); // Arbitrary number of objects to create
  rectMode(CENTER);
  //engine.add(new Ship());
  myShip = new Ship();
  engine.add(myShip);
  engine.add(new Launcher());
}

void draw() {
  lights();
  background(outerspace);
  pushMatrix();
  translate(0.5*width, 0.5*height);
  ss.run();
  popMatrix();
  
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
  if (key == 'q' || key == 'Q') qkey = true;
  if (key == 'e' || key == 'E') ekey = true;
  if (key == ' ') spacekey = true;
  
}

void keyReleased() {
  //char k = key;
  //k = k.toLowerCase();
   
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 'a' || key == 'A') akey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (key == 'q' || key == 'Q') qkey = false;
  if (key == 'e' || key == 'E') ekey = false;
  if (key == ' ') spacekey = false;
}
