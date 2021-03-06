// Source:
// https://www.youtube.com/watch?v=17WoOqgXsRM
// https://cs.brynmawr.edu/gxk2013/examples/transformations/starfield/
class Star extends GameObject {
  // Star coordinates in 3D
  float x;
  float y;
  float z;
  
  Star() {
    x = random(-5000, 5000);
    y = random(-5000, 5000);
    z = random(0, 2000);
    dx = 0;
    dy = 0;
    dz = 0;
  }
  
  void update() {
    z-=10;        // Move star closer to viewport
    if (z <= 0.0) // Reset star if it passes viewport
      reset();
  }
  
  void reset() {
    // Reset star to a position far away
    x = random(-5000, 5000);
    y = random(-5000, 5000);
    z = 2000.0;
  }

  void draw() {
    
    // Project star only viewport
    float offsetX = 100.0*(x/z);
    float offsetY = 100.0*(y/z);
    float scaleZ = 0.0001*(2000.0-z);

    // Draw this star
    pushMatrix();
    translate(offsetX, offsetY);
    scale(scaleZ);
    fill(deepspacesparkle);
    ellipse(0,0,40,40);
    popMatrix();
  }
}
