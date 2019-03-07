
// variables for position
float xPos =0;
float yPos =0;
float pos;
float accel =.1;
float speed =1;
float ballw = 40;
float ballh = 40;

platform[] platforms;

// booleans for movement
boolean right = false;
boolean left = false;
boolean bounce= false;
void setup() {
  //window mods
  size (700, 500);
  background(255);

  pos = height-400;
  //shape origin
  xPos = width/7;
  yPos = height/2;

  noStroke();

  //array for platforms
  platforms = new platform[5];
//for loop for platforms
  for (int i = 0; i < platforms.length; i++) {
    platforms[i] = new platform();
  }
}

void draw() 
{
  background(19, 19, 19);
// draw and move for platforms
  for (int i = 0; i < platforms.length; i++) {
    platform p = platforms[i];
    p.display();
    p.move();
  }


  //gravity code
  pos = pos + speed;
  speed = speed + accel;

  // collision code
  for (int i = 0; i < platforms.length; i++) {
    platform p = platforms[i];
    if (xPos +( ballw/2) > p.xp && xPos < p.xp + p.pw && pos + (ballh/2) > p.yp && pos < p.yp + p.ph) {
      if (speed >= 0)
        bounce = true;
    }
  }

// fail condition
  if ( pos >500 && accel >=0 ) {
    speed= 0;
    accel =0;
    bounce = false;
    fill(#FC1703);
    textSize(100);
    text("game over", width-600, height/2);
  }

  // update movement
  if (left) {
    xPos = xPos - 4;
  }
  if (right) {
    xPos = xPos + 4 ;
  }
  if ( bounce) {
    pos -= 5;
    speed= -accel* 60;
    bounce = false;
  }
  //draw shape
  fill (#031DFC);
  ellipse(xPos, pos, ballw, ballh);
  fill(0,255,0);
  if ( xPos > 740 ) {
    xPos = - 40;
  }
  if (xPos< -40) {
    xPos = 740;
  }
}
//ball movement
void keyPressed() {
  if (key == 'a') {
    left = true;
  }
  if (key == 'd') {
    right = true;
  }
}
void keyReleased() {
  if (key == 'a') {
    left = false;
  }


  if (key == 'd') {
    right = false;
  }
}
