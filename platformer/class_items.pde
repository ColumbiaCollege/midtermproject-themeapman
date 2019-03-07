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
    xp=(0);
    yp=random(height-300);
    yp+= 300;

    speed = random(1, 3);
    pw = random(100, 200);
    ph = 10;
  }


  void display() {
    rect(xp, yp, pw, ph);
  }

  void move() {
    accel=0.005;
    speed= speed +accel;
    xp= xp+speed;
    if ( xp>width) {
      xp=-300;
      yp=random (height);
    }
  }
}
