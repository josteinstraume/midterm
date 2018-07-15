// Source:
// https://www.youtube.com/watch?v=VBDDsRFzR1E
class Bullet extends GameObject {
  
  Bullet() {
    x = myShip.x;
    y = myShip.y;
    z = myShip.z;
    dx = 0;
    dy = 0;
    dz = -10;
  }
  
  void show() {
    pushMatrix();
    translate(x, y, z);
    fill(250, 240, 142);
    box(5);
    popMatrix();
  }
  
  void act() {
    x = x + dx;
    y = y + dy;
    z = z + dz;
  }
  
  boolean hasDied() {
    return z < -10000;
  }
}
