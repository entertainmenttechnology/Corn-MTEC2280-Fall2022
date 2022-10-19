/*
This is a sound file player. 
 */


import processing.sound.*;

SoundFile file;

void setup() {
  //Load a soundfile
  file = new SoundFile(this, "vibraphon.aiff");   
  // Play the file in a loop
  file.loop();
}      


void draw() {
}