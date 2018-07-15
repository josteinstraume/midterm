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
    pushMatrix();
    //fill(250, 240, 142);
    //fill(electricgreen);
    fill(spacecadet);
    translate(x, y, z);
    box(25);
    popMatrix();
  }

  void act() {
    dx = 0;
    dy = 0;
    dz = 0;
    
    if (wkey) dy = -5;
    if (akey) dx = -5;
    if (skey) dy = 5;
    if (dkey) dx = 5;
    if (spacekey & frameCount % 10 == 0) engine.add(new Bullet());
    
    x = x + dx;
    y = y + dy;
    z = z + dz;
  }
  
  boolean hasDied() {
    return false;
  }
}
