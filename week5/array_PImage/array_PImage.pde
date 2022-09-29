//from demo on arrays
//load images into an array and display them as animation - mouse click will reverse play direction

PImage[] anim = new PImage [13];  // creates new PImage array called anim with 13 positions

int frame = 0;
boolean forward = true; 

void setup() {
  size(1100, 400); 
  frameRate(10);
  
  for (int i = 0; i < anim.length; i++){
    anim[i] = loadImage ("frame_" + i + ".png");
  }
}

void draw() {
  background(0);
  imageMode(CENTER);
  image(anim[frame], width/2, height/2, width, height);

  println (frame);
  
  if (forward == true){
    if (frame == anim.length-1){
      frame = 0;
    }
    else {
      frame++;
    } 
  }
  else {
    if (frame == 0){
      frame = anim.length-1;
    }
    else {
      frame--;
    }
  }
}

void mousePressed() {
  forward = !forward;
}
