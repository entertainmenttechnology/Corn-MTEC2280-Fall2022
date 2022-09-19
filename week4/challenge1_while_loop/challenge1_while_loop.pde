/*
///////////////////////////////////////////
 WHILE LOOPS:
 CHALLENGE #1
 ///////////////////////////////////////////
 */

void setup(){
  size(500, 500);
}

void draw(){
    background(255);
    
    int x = 0;
    
    while (x <= width){
      line(x, 0, mouseX, mouseY);
      x+=25;
    }
}
