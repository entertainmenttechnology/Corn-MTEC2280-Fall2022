int number = 5; // declares an integer variable called number and assigns a value of 5
float grow = 0.5; // declares a float variable called grow and assigns a value of 0.5
float move = 0.2; 

void setup(){
  size (800, 800);
}

void draw(){
  background (255);
  
  //use variable and arithmetic for ellipse values
  ellipse(mouseX, mouseY, 100 * number, 100/number);
  
  //creates a rectangle using grow variable for width and height
  rect (mouseX-50, mouseY-50, grow, grow);
  //increment grow variable;
  grow = grow + 0.2;
  
  //create a rectangle using move variable for X position
  rect(move, 400, 100, 100);
  //increment move variable
  move = move + 0.2;
  
  //print value variables to the console
  //println("here is some text");
  
  //println("number: " + number);
  //println("grow: " + grow);
  //println("move: " + move);
}
