class platform {
  // floats for the platforms
  float xp;
  float yp;
  float accel;
  float speed;
  float size;

  platform() {
    xp=random(width);
    yp=random(height);

    speed = random(1, 3);
    size= random(100, 300);
  }


  void display() {
    rect(xp, yp, size, 10);
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
