/**
 * Easing. 
 * 
 * Click the mouse and the symbol will move to the mouse location.  
 * Between drawing each frame of the animation, the program
 * calculates the difference between the position of the 
 * symbol and the cursor. If the distance is larger than
 * 1 pixel, the symbol moves part of the distance (0.05) from its
 * current position toward the cursor. 
 */
 
float x;
float y;
float lastX;
float lastY;
float targetX;
float targetY;
int pos = 0;

void setup() {
  size(600, 600); 
  noStroke();  
}

void draw() { 
  background(50);
  
  x = map(pos, 0, 100, lastX, targetX);
  y = map(pos, 0, 100, lastY, targetY);
  if(pos<100)pos+=5;
  
  ellipse(x, y, 66, 66);
  
  if(mousePressed){
    pos = 0;
    lastX = x;
    lastY = y;
    targetX = mouseX;
    targetY = mouseY;
  }
}
