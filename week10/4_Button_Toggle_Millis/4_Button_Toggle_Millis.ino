const int buttonPin = 2;
const int LED = 11;

int LEDState = 0;
int buttonState = HIGH; //HIGH is not pressed, and LOW is pressed
int lastButtonState = HIGH; 

unsigned long previousMillis = 0;
const unsigned long interval = 2000;
const unsigned long interval2 = 500;
bool blinkState = false;

void setup() {
  pinMode(LED, OUTPUT);
  pinMode(buttonPin, INPUT_PULLUP);
}

void loop() {
  unsigned long currentMillis = millis();
  
  buttonState = digitalRead(buttonPin);
  delay(10);

  if(buttonState == LOW && lastButtonState == HIGH){
    LEDState++;
    if(LEDState > 2){
      LEDState = 0;
    }
  }
  else {
  }

  lastButtonState = buttonState;

  if(LEDState == 1){
    if(currentMillis - previousMillis >= interval){
      previousMillis = currentMillis;

      if(blinkState == true){
        digitalWrite(LED, LOW);
      }
      else{
        digitalWrite(LED, HIGH);
      }
      blinkState = !blinkState;
    }
  } else if(LEDState == 2){
    if(currentMillis - previousMillis >= interval2){
      previousMillis = currentMillis;

      if(blinkState == true){
        digitalWrite(LED, LOW);
      }
      else{
        digitalWrite(LED, HIGH);
      }
      blinkState = !blinkState;
    }
  } else{
    digitalWrite(LED, LOW);
    blinkState = false;
  }
}
