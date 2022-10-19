/*
This is a video file player. 
 */

import processing.video.*;
Movie file;

void setup() {
  size(1000, 1000);
  file = new Movie(this, "wheat.mov");
  file.loop();
  imageMode(CENTER);
}

void draw() {
  background(0);
  image(file, mouseX, mouseY);
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}
