

//booleans for movement

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
void setup() {
  size (800, 500);
  background(0);

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
  background(0);

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
}



//void move(){ 
