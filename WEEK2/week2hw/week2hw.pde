
class Snowflakes {

  float x, y;
  int opacity = 255; //for opacity
  color c;
  float gravity;
  float size;

  //CONSTRUCTOR
  Snowflakes(float _x, float _y) {
    x = _x;
    y = _y;
    size = random (5, 15);

    gravity = random(1, 3);
  }


  //METHODS
  //draw
  void display() {
    fill(255, opacity);
    ellipse(x, y, size, size);
  }

  //fall
  void fall() {
    //gravity
    y += gravity;

    opacity --;
  }

  boolean isAlive() {
    if (y<height) {
      return true;
    } else {
      return false;
    }
  }
  
}
