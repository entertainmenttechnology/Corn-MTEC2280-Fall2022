int grid = 8;
int squareSize;
 
void setup() {
  size(600, 600); // Specified by assignment
  squareSize = width/grid;
}
 
void draw() {
 
  // Begin loop for columns
  for (int w = 0; w < width; w += squareSize) {
    // Begin loop for rows
    for (int h = 0; h < height; h += squareSize) {
 

      // Begin fill controls
      if ((h+w) % 2 == 0) { // Even is white
        fill(255);
      } else { // Odd is black
        fill(0);
      }
 
      // For every column and row, a rectangle is drawn at an (h,w) location scaled and sized by videoScale.
      rect(h, w, squareSize, squareSize);
    }
  }
}
