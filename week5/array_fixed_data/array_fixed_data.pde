//demo on arrays with fixed data
//store a list of numbers + a list of items

//dataType[] nameOfArray = new dataType[numberofPositions];
//dataType[] nameOfArray= {};


// creates an integer array called num and creates 5 positions
int[] num = new int[5];  

// creates a String array called items and initializes array elements in one sequence
String[] items = {"batteries", "light bulbs", "pencils", "keys"};  

int positionNum = 0;       //tracking position in num array
int positionItems = 0;     //tracking position in items array

void setup() {
  size(700, 700);
  fill(255, 100, 0);

  //initializing array elements individually
  num[0]= 81; //the first array element equals 81
  num[1]= 2;  // the second array element equals 2
  num[2]= 6;
  num[3]= 252;
  num[4]= 8;

  textSize(36);
  textAlign(CENTER, CENTER);
}

void draw() {
  background (0);
  text ("I need to go to the store to buy " + num[positionNum], width/2, height/2);
  text (items[positionItems] + " for my friend.", width/2, height/2 + 50);

  //println (items[0]);
  //println (items[1]);
  //println (num[2]);
  
  println ("positionNum: " + positionNum);
  println ("positionItems: " + positionItems);
}

void keyPressed() {
  if (positionItems == items.length-1) { //if last array position
    positionItems=0;  //return to first array position
  } else {
    positionItems++;  //otherwise move forward a single position
  }
  positionNum= int(random(0, num.length));  //return a random number between 0 and array length
}