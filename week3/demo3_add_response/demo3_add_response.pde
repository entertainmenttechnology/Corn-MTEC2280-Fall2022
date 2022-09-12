/*
//////////////////////////////////////////////////
 Demo3: working with image assets using PImage.
 Adds mouse response and second image. 
 //////////////////////////////////////////////////
 
 
 Place image assets into "data" folder.
 Place data folder inside sketch's folder.
 
 For reference: https://processing.org/reference/PImage.html
 */


//Create a PImage object to store image
PImage cupcake;  //Creates a PImage object called cupcake
PImage hand; // Create another PImage object called hand

//Creates variables for text animation
float opacity = 0;
float fade = 1;
//Create variable for cupcake animation
float fall = 0;
//Create a string variable for text
String quote = "CUPCAKE!";

void setup() {
  size (500, 500);
  background (255);
  imageMode(CENTER); //draws images from center point
  textAlign(CENTER); //aligns text
  textSize(88); //sets size of text

  //Assign image to object using loadImage() method
  cupcake= loadImage("cupcake.png");
  hand = loadImage("hand.jpg");
}  

void draw() {
  background(255);  
  
  fill(opacity);
  text(quote, width/2, height/2 - 50); //displays text with x, y coordinates
  
  opacity = opacity + fade;
  
  if (opacity > 255 || opacity < 0){
    fade = -fade;
  }

  //display image with image() method, x and y coordinate of image
  image(cupcake, width/2, height/2); 
  
  if (mousePressed){
    background(255);
    image(hand, (width/2)-50, height/2, 500, 300);
    image(cupcake, width/2, fall);
    
    if (fall < height/2){
      fall++;
    }
    else{
      text(quote, width/2, height/2 - 50); //displays text with x, y coordinates
    }
  }
  else {
    fall = 0;

  }
  
  
  println("opacity: " + opacity);
  println("fade: " + fade);
  println("fall: " + fall);
}
