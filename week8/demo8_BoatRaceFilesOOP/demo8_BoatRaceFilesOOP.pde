Boat boat1;
Boat boat2;
Boat boat3;

void setup(){
  size(500, 500);
  boat1 = new Boat("red team", color(255,0,0), 0, 100, 2); 
  boat2 = new Boat("green team", color(0,255,0), 0, 300, 3);
  boat3 = new Boat("blue team", color(0,0,255), 0, 200, 1);
  rectMode(CENTER);
}

void draw(){
  background(125);
  boat1.move();
  boat2.move();
  boat3.move();
  boat1.display();
  boat2.display();
  boat3.display();
}
