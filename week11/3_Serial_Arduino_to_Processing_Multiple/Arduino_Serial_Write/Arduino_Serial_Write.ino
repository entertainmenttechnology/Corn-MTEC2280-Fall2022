// DEMO FOR SENDING SERIAL DATA FROM ARDUINO TO PROCESSING
//READS ANALOG SENSOR AND WRITES VALUE TO SERIAL PORT 

const int SENSOR = A0; //sensor hooked up to analog pin A0
const int BUTTON = 7;
const int LED = 11;
int sensor_val = 0;
int button_val = 0;

void setup() {
  pinMode (SENSOR, INPUT);
  pinMode (LED, OUTPUT);
  pinMode (BUTTON, INPUT_PULLUP);
  Serial.begin(115200); // Start serial communication at 9600 baud
}

void loop() {
  sensor_val = analogRead(SENSOR); //read sensor and assign to variable called val
  button_val = digitalRead(BUTTON);
  analogWrite(LED, sensor_val/4);

  Serial.print('H'); // unique header to identify start of message
  Serial.print(",");
  Serial.print(sensor_val,DEC);
  Serial.print(",");
  Serial.print(button_val,DEC);
  Serial.print(",");  // note that a comma is sent after the last field
  Serial.println();  // send a cr/lf

  delay(30); // Wait 100 milliseconds
}
