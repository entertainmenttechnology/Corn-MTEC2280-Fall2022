String name = "Lad";
String breed = "cattle dog";
String furColor = "red";
int age = 13;

void getDetails(){
    println("This dog's name is " + name + ". They are a " + furColor + " " + breed + " and are " + age + " years old.");
}
  
void changeAge(int a){
    age = a;
    println(name + "'s age has been changed to " + age + ".");
}

void setup(){
  getDetails();
  changeAge(8);
  getDetails();
}

void draw(){
}