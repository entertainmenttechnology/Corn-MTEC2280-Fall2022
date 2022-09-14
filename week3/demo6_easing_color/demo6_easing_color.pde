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

float d = 66;
float targetD = d;

float r = 255;
float g = 255;
float b = 255;
float targetR = r;
float targetG = g;
float targetB = b;


void setup() {
  size(600, 600); 
  noStroke();  
  x = width / 2;
  y = width / 2;
  targetX = x;
  targetY = y;
}

void draw() { 
  background(50);
  
  float dx = targetX - x;
  x += dx * easing;
  
  float dy = targetY - y;
  y += dy * easing;
  
  float d_diameter = targetD - d;
  d += d_diameter * easing;
  
  float d_r = targetR - r;
  r += d_r * easing;
  
  float d_g = targetG - g;
  g += d_g * easing;
  
  float d_b = targetB - b;
  b += d_b * easing;
  
  fill(r,g,b);
  ellipse(x, y, d, d);
  
  if(mousePressed){
    targetX = mouseX;
    targetY = mouseY;
    
    targetD = random(5,200);
    
    targetR = random(0,255);
    targetG = random(0,255);
    targetB = random(0,255);
  }
}
