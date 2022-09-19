/*
draw a series of rectangles nested within each other
 */



void setup() {
  size(500, 500);
  rectMode(CENTER);
}


void draw() {
  background(255);
  
  //for loop printing values of i to console
  for (int i=1; i<=10; i=i+1) {
    println(i);
  }
  
  for (int i= width; i>=0; i-=50) {
    rect(width/2, height/2, i, i);
  }
}
