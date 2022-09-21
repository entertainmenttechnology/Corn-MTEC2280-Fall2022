void setup() {
  size (500, 500);
}

void draw() {
  background(0);
  
  for (int x=0; x<=width; x+=50) {
    for (int y=0; y<=height; y+=50){
      ellipse (x, y, 50, 50);
    }
  }
}
