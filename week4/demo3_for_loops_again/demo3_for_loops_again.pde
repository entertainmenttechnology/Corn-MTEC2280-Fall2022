/*
///////////////////////////////////////////
 FOR LOOPS:
 From demo exploring: 
 for loops
 
 FOR LOOP STRUCTURE:
 for (initialize; boolean test; increment){
   statements
 }   
 
 ///////////////////////////////////////////
 */


void setup() {
  size(700, 700);
  background (255);
}

void draw() {

  

  //for loop drawing vertical lines from left to right
  for (int i=0; i<width; i=i+50) {
    line (i, 0, i, height);
  }

  //for loop drawing horizontal lines from top to bottom
  for (int i=0; i<height; i=i+50) {
    line (0, i, width, i);
  }
  
  println ("mouseX :" + mouseX);
  println ("mouseY :" + mouseY);
}
