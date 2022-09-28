//From demo on functions!
//Creating user-defined function for drawing eyeballs

void setup() {
  size (500, 500);
  ellipseMode(CENTER);
}

void draw() {
  background (255);
  eyeball(true, 300, 250, 100, 50, 50, 50); //must use the correct number of arguments
  eyeball(false, 125, 90, 0, 320, 90, 75); //must use the correct type of arguments
  eyeball(true, 255, 60, 80, 200, 300, 25); 
  noLoop(); //stops the loop from running again
}

//this void type refers to the fact that the function doesn't return anything
//See Shiffman pg. 132 for more on types

void eyeball(boolean open, int r, int g, int b, int x, int y, int radius){
  fill(r, g, b);
  ellipse(x, y, radius*2, radius*2);
  
  if (open){
    fill(0);
    float randx = random(-10,10);
    float randy = random(-10,10);
    ellipse(x+randx, y+randy, radius, radius);
    fill(255);
    ellipse(x+randx+5, y+randy-5, radius/2, radius/2);
  }
  
  else {
    line(x-radius, y, x+radius, y);
  }
}

void mousePressed(){
  loop(); //runs the loop
}
