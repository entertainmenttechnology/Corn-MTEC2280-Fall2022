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
float targetX;
float targetY;
float easing = 0.05;

void setup() {
  size(600, 600); 
  noStroke();  
}

void draw() { 
  background(50);
  
  float dx = targetX - x;
  x += dx * easing;
  
  float dy = targetY - y;
  y += dy * easing;
  
  ellipse(x, y, 66, 66);
  
  if(mousePressed){
    targetX = mouseX;
    targetY = mouseY;
  }
}
