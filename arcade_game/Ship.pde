// Source:
// https://www.youtube.com/watch?v=VBDDsRFzR1E
class Ship extends GameObject{
  
  Ship() {
    x = width/2;
    y = width/2;
    z = width/2;
    dx = 0;
    dy = 0;
    dz = 0;
    hp = 20;
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
    
    if (wkey) dy = -5;  // Up
    if (skey) dy = 5;   // Down
    if (akey) dx = -5;  // Left
    if (dkey) dx = 5;   // Right
    if (ekey) dz = -5;  // Forward
    if (qkey) dz = 5;   // Backward
    
    if (spacekey & frameCount % 10 == 0) engine.add(new Bullet());
    
    x = x + dx;
    y = y + dy;
    z = z + dz;
  }
  
  boolean hasDied() {
    if (hp <= 0) {
      for (int j = 0; j < 5; j++) {
        engine.add(new Particle(x, y, z));
      }        
      return true;
    }
    return false;
  }
}
