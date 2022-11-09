import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
char HEADER = 'H';    // character to identify the start of a message
short LF = 10;        // ASCII linefeed
int[] values = {0, 1};
color c = color(0, 0, 0);

void setup() {
  size(600, 600);
  /*
   IMPORTANT: We must tell Processing which port to read from.
   Run the sketch and check your console to see the results of printArray(Serial.list());
   and that is how you know the port to use.
   On my Mac, it is port 1 and so I open Serial.list()[1].
   */
  String[] portList = Serial.list();
  printArray(portList); // this line prints the port list to the console
  String portName = Serial.list()[3]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 115200);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available, -- if you don't do this, you will read a bunch of -1 values mixed in
    String message = myPort.readStringUntil(LF);
    
    if(message != null) {
      print(message);
      String [] data  = message.split(","); // Split the comma-separated message
      if(data[0].charAt(0) == HEADER) {       // check for header character in the first field
        for( int i = 1; i < data.length-1; i++) { // skip the header and terminating cr and lf
          try{
            values[i-1] = Integer.parseInt(data[i]);
          }
          catch (NumberFormatException e){
            return;
          }
          println("Value" +  i + " = " + values[i-1]);  //Print the value for each field
        }
        println();
      }
    }
  }

  background(255);
  if(values[1] == 0){
     c = color(random(255), random(255), random(255));
  }
  fill (c);
  ellipse (width/2, height/2, values[0], values[0]);
}
