/*
///////////////////////////////////////////
 FOR LOOPS:
 CHALLENGE #2
 ///////////////////////////////////////////
 */

void setup() {
  size(1000, 1000);
  ellipseMode(CENTER);
}


void draw() {
  background(255);
  for (int i = 0; i<=width*2; i+=40) {
    noFill();
    strokeWeight((i+1)/25);
    ellipse(mouseX, mouseY, i+i, i+i);
  }
}
