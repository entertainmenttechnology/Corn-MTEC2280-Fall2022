/*
///////////////////////////////////////////
GETTING TO KNOW PROCESSING
///////////////////////////////////////////

Download latest version of Processing: 
http://www.processing.org 

Refer to the reference:
https://processing.org/reference/
*/


/*
This is a multiline comment
I can type anything here and it won't be compiled
Here too
*/

// This is a comment -- use them to make your code more legible 

// Set parameters of canvas size with width and height
size(800, 800);

// If not set, the default canvas size is 100 x 100

// Change the background color, red, green, blue value 0-255
background(255, 100, 50);

// Set parameters of function with x,y coordinates of where to begin and end the line
line(5, 5, 50, 50);

line (70, 0, 0, 70);

// make a triangle
// triangle (x1, y1, x2, y2, x3, y3);
triangle(600, 300, 600, 200, 200, 400);

// make a rectangle
// rect(x1, y1, x2, y2)
rect(320, 420, 400, 200);

// make a quad(x1, y2, x2, y2, x3, y3, x4, y4);
quad(200, 200, 400, 200, 600, 600, 200, 300);

//change the fill color fill(red, green, blue)
fill(200, 255, 50);

//change the stroke color
stroke(175, 100, 235);

//change the stroke weight
strokeWeight(20);

//ellipse(a, b, c, d)
//a and b are coordinates for the center point and c and d are width, height
ellipse(600, 300, 200, 400);

//no fill
//noFill();

//no stroke
noStroke();

rect(100, 300, 200, 100);
