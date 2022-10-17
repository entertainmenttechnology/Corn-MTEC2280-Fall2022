class Dog{
  String name;
  String breed;
  String furColor;
  int age;
  int teethRemoved;
  
  Dog(String tempName, String tempBreed, String f, int a){
    name = tempName;
    breed = tempBreed;
    furColor = f;
    age = a;
    teethRemoved = 0;
  }
  
  void getDogDetails(){
    println("This dog's name is " + name + ". They are a " + furColor + " " + breed + " and are " + age + ".");
  }

  void changeAge(int a){
    age = a;
    println(name + "'s age has been changed to " + age + ".");
  }
  
  void removeTooth(){
    teethRemoved++;
    println(name + "'s missing " + teethRemoved + " teeth.");
  }
}

Dog myDog1;
Dog myDog2;

void setup() {
  myDog1 = new Dog("Lad", "cattle dog", "red", 13);
  myDog2 = new Dog("Joanne", "poodle", "white", 1);
  
  myDog1.getDogDetails();
  myDog2.getDogDetails();
  
  myDog2.changeAge(8);
  
  myDog2.getDogDetails();
  
  myDog1.removeTooth();
  myDog1.removeTooth();
  myDog1.removeTooth();
  myDog1.removeTooth();
  myDog1.removeTooth();
  myDog1.removeTooth();
}

void draw(){
}

