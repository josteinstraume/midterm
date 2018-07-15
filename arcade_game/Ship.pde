// Source:
// https://www.youtube.com/watch?v=VBDDsRFzR1E
class Ship extends GameObject{
  
  Ship() {
    x = width/2;
    y = width/2;
    z = 0;
    dx = 0;
    dy = 0;
    dz = 0;
  }
  
  void show() {
     fill(250, 240, 142);
     translate(x, y, z);
     box(100);
  }

  void act() {
    dx = 0;
    dy = 0;
    dz = 0;
    
    if (wkey) dy = -5;
    if (akey) dx = -5;
    if (skey) dy = 5;
    if (dkey) dx = 5;
    if (spacekey) engine.add(new Bullet());
    
    x = x + dx;
    y = y + dy;
    z = z + dz;
  }
  
  boolean hasDied() {
    return false;
  }
}