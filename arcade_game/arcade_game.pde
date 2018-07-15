StarSystem ss;
Star star;
Star[] stars;
int numStars = 400;

import processing.opengl.*;

void setup() {
  size(600, 600);
  smooth();
  stroke(255);
  strokeWeight(5);
  ss = new StarSystem();
  ss.addStar();
}

void draw() {
  background(0);
  translate(0.5*width, 0.5*height);
  ss.run();
}
