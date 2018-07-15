// Source:
// https://www.youtube.com/watch?v=CK0zRCfh-t4
class Enemy extends GameObject {

  Enemy(float incomingX, float incomingY, float incomingZ) {
    x = incomingX;
    y = incomingY;
    z = incomingZ;
    dx = 0;
    dy = 0;
    dz = +10;
  }
  
  void show() {
    pushMatrix();
    translate(x, y, z);
    fill(orange);
    box(40);
    popMatrix();
  }
  
  void act() {
    x = x + dx;
    y = y + dy;
    z = z + dz;
  }
  
  boolean hasDied() {
    return dz > 100;
  }
  
}
