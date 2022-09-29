int length = 10;
int[] pointX = new int[length];
int[] pointY = new int[length];

int counter = 0;

void setup(){
  size(500, 500);
}

void draw(){
  background(255);
  pointX[counter] = mouseX;
  pointY[counter] = mouseY;
  counter++;
  
  for(int i=0; i<length-1; i++){
    if(i+1 != counter){
      line(pointX[i], pointY[i], pointX[i+1], pointY[i+1]);
    }
  }
  
  if(counter != length){
    line(pointX[0], pointY[0], pointX[length-1], pointY[length-1]);
  }
 
  if (counter > length-1){
    counter=0;
  }
}
