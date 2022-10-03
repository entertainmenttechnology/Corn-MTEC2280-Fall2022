//keeping count of clicks with a mouse

int clickCount = 1; //variable to keep track of mouse clicks
int clickInterval = 300; //time between clicks
int clearInterval = 1000; //time at which to clear the canvas
int clickTime = 0;
int lastClick = 0;

void setup(){
  size(400, 200);
  background(0);
}

void draw(){
  int currentTime = millis(); //update currentTime in draw so that it is continuously updating
  if (currentTime - clickTime > 1000){
    background(0); 
  }
}

void mousePressed(){
  clickTime = millis();
    if (clickTime - lastClick < clickInterval){
      clickCount++;
    }
    else {
      clickCount = 1;
      
    }
    background(0);
    textAlign(CENTER);
    textSize(30);
    text("Number of clicks: " + clickCount, width/2, height/2);
  lastClick = clickTime;
}