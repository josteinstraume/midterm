// Source:
// https://www.youtube.com/watch?v=MJh3blPxcQw
// Category of things, not an actual 'thing' created in the game, hence abstract class
abstract class GameObject {
  float x, y, z, dx, dy, dz;
  
  GameObject() {
  }
  
  void show() {
  }
  
  void act() {
  }
  
  boolean hasDied() {
    return false;
  }
}
