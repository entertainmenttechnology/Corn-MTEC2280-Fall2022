//Revisiting conditionals with functions
//bounces two circles, when they touch they change color
//click mouse button to change directions

// global variables for ellipse
float x1, y1, xMove1, yMove1;
float x2, y2, xMove2, yMove2; 

// global variables for fill
float r= 0;
float g= 255;
float b= 0;

int diameter = 100;

void setup() {
  size (700, 700);
  //start ellipse at canvas center
  x1= width/2;
  y1= height/2;
  x2= width/2+100;
  y2= height/2+100;
}

void draw() {
  background (0);
  fill (r,g,b);
  ellipse (x1, y1, diameter, diameter);
  ellipse (x2, y2, diameter, diameter);

  //increment the x, y location
  x1= x1 + xMove1;  
  y1= y1 + yMove1;
  x2= x2 + xMove2;  
  y2= y2 + yMove2;

  //if x or y go beyond bounds of canvas, flip direction
  if (x1> width || x1 < 0) { 
    xMove1= -xMove1;
  }
  if (y1> height || y1 <0) {
    yMove1 = -yMove1;
  }
  
  if (x2> width || x2 < 0) { 
    xMove2= -xMove2;
  }
  if (y2> height || y2 <0) {
    yMove2 = -yMove2;
  }
  
  if(overlap()){
    r= random (255);
    g= random (255);
    b= random (255);
    println("OVERLAPPED!");
  }
  else{
    print(".");
  }

  //print values to the console
  //println ("x: " + x + " y: " + y + " xMove: " + xMove + " yMove: " + yMove);
}

//click mouse to return new random values for xMove and yMove
void mousePressed() {
  xMove1= random (-10, 10);
  yMove1= random (-10, 10);
  xMove2= random (-10, 10);
  yMove2= random (-10, 10);
}

boolean overlap(){
  if ((x1 > x2 && x1 < x2+diameter || x2 > x1 && x2 < x1+diameter) && (y1 > y2 && y1 < y2+diameter || y2 > y1 && y2 < y1+diameter)){
    return true;
  }
  else{
    return false;
  }
}