/*
This is a introduction to 3D space. 
 */

float x,y,z;
float increment = 0.01;
float angle = 0;

void setup() {
  size(200,200,P3D);
  x = width/2;
  y = height/2;
  z = 0;
}

void draw() {
  background(0);
  //directionalLight(255, 255, 255, -1, 0, 0);
  translate(x,y,z);
  rotateX(angle);
  rotateY(angle);
  rotateZ(angle);
  rectMode(CENTER);
  //rect(0,0,50,50);
  rect(0, 0, 100, 100);

  angle += increment;
  //z += increment*20;
}