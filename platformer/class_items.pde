public class platform {
  // floats for the platforms
  float xp;
  float yp;
  float pw;
  float ph;
  float accel;
  float speed;
  float size;

  platform() {
    xp=random(width);
    yp=random(height);

    speed = random(1, 3);
    pw = random(100, 300);
    ph = 10;
  }


  void display() {
    rect(xp, yp, pw, ph);
  }

  void move() {
    accel=0.001;
    speed= speed +accel;
    xp= xp+speed;
    if ( xp>width) {
      xp=-300;
      yp=random (height);
    }
  }
}
