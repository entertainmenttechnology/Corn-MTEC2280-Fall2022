Boat[] boats = new Boat[8];

class Boat {
  String teamName;
  color c;
  float xpos;
  float ypos;
  float xspeed;
  int lapCount;
  
  //Constructor
  Boat(String n, color tempC, float x, float y, float s){
    teamName = n;
    c = tempC;
    xpos = x;
    ypos = y;
    xspeed = s;
    lapCount = 1;
  }
  
  void display(){
    fill(255);
    rect(xpos, ypos, 100, 10);
    rect(xpos, ypos-30, 10, 80);
    arc(xpos, ypos+5, 100, 50, 0, PI, OPEN);
    fill(c);
    triangle(xpos, ypos-70, xpos-40, ypos-40, xpos, ypos-20);    
  }
  
   void move(){
    xpos += xspeed;
    if(xpos > width + 50){
      ypos = round(random(100, 500));
      xpos = -50;
      xspeed = round(random(1,8));
      lapCount++;
      println(teamName + " is on lap #" + lapCount);
    }
  }
}


void setup(){
 size(500, 500);
 for(int i =0; i<boats.length-1; i++){
   boats[i] = new Boat("team " + i, color(random(255),random(255),random(255)), random(0,width), random(0,height), random(0,8));
 }
 rectMode(CENTER);
}

void draw(){
  background(125);
  for(int i =0; i<boats.length-1;i++){
    boats[i].move();
    boats[i].display();
  }
}
