int grid = 8;
int squareSize;

boolean redraw = true;
 
void setup() {
  size(600, 600); // Specified by assignment
  squareSize = width/grid;
  ellipseMode(CORNER);
}
 
void draw() {
  if (redraw){
    
   background(255);
    // Begin loop for columns
    for (int w = 0; w < width; w += squareSize) {
      // Begin loop for rows
      for (int h = 0; h < height; h += squareSize) { 
        int randomSeed = round(random(1));
        println(randomSeed);
        if(randomSeed == 0){
          rect(h+5, w+5, squareSize-10, squareSize-10);
        }
        else{
          ellipse(h+20, w+25, squareSize-40, squareSize-40);
        }
      }
    }
    redraw = false;
  }
}

void mousePressed(){
  redraw = true; 
}
