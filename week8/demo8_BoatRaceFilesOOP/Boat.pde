class Boat {
  String teamName;
  color c;
  float xpos;
  float ypos;
  float xspeed;
  int lapCount;
  
  
  Boat(String tempName, color tempC, float tempX, float tempY, float tempXspeed){
    teamName = tempName;
    c = tempC;
    xpos = tempX;
    ypos = tempY;
    xspeed = tempXspeed;
    lapCount = 1;
  }
  
  void display() {
    fill(255);
    rect(xpos, ypos, 100, 10);
    rect(xpos, ypos-30, 10, 80);
    arc(xpos, ypos+5, 100, 50, 0, PI, OPEN);
    fill(c);
    triangle(xpos, ypos-70, xpos-40, ypos-40, xpos, ypos-20);
  }
  
  void move() {
    xpos += xspeed;
    if (xpos > width + 50){
      ypos = round(random(100, 500));
      xpos = -50;
      xspeed = round(random(1,8));
      lapCount++;
      println(teamName + " is on lap #" + lapCount);
    }
  }
}
