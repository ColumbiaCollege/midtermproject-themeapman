
// variables for position
float xPos =0;
float yPos =0;
float pos;
float accel =.01;
float speed =1;
float ballw = 40;
float ballh = 40;


platform platform1;
platform platform2;
platform platform3;
platform platform4;
platform platform5;
platform platform6;
platform platform7;
platform platform8;
platform platform9;
platform platform10;


// booleans for movement
boolean right = false;
boolean left = false;
void setup() {
  //window mods
  size (700, 500);
  background(255);

  pos = height/2;
  //shape origin
  xPos = width/7;
  yPos = height/2;

  noStroke();
  fill(0, 240, 0);
  platform1 = new platform();
  platform2 = new platform();
  platform3 = new platform();
  platform4 = new platform();
  platform5 = new platform();
  platform6 = new platform();
  platform7 = new platform();
  platform8= new platform();
  platform9 = new platform();
  platform10 = new platform();
}

void draw() {
  background(19, 19, 19);
  platform1.display();
  platform1.move();
  platform2.display();
  platform2.move();
  platform3.display();
  platform3.move();
  platform4.display();
  platform4.move();
  platform5.display();
  platform5.move();
  platform6.display();
  platform6.move();
  platform7.display();
  platform7.move();
  platform8.display();
  platform8.move();
  platform9.display();
  platform9.move();
  platform10.display();
  platform10.move();
  //gravity code
  //if(!keyPressed){
  pos = pos + speed;
  speed = speed + accel;
 //if (xPos + ballw > xp && xPos < xp + pw && pos + ballh > yp && pos < yp + yh) {
 //  textSize(40);
 //  text ("works?",60,60);
 //}
  if ( pos >500 && accel >=0 ) {
    speed= 0;
    accel =0;
    textSize(100);
    text("game over", width-600, height/2);
  }

  // update movement
  if (left) {
    xPos = xPos - 1;
  }
  if (right) {
    xPos = xPos + 1;
  }

  //draw shape
  ellipse(xPos, pos, ballw, ballh);
}

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
