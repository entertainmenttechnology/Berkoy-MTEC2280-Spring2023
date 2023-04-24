//Receives data over Serial port from Processing to control 2 LEDS
//Hook up LEDs to pins 4 and 8;


byte val; // stores data received from serial port
const int LED1 = 4; // variable for which pin
const int LED2 = 8; // variable for which pin


void setup() {
  pinMode(LED1, OUTPUT); // set pin as output
  pinMode(LED2, OUTPUT); // set pin as output
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }
  if (val == 0) { // If 0 received
    digitalWrite(LED1, LOW); // turn LEDs off
    digitalWrite(LED2, LOW);
  }
  else if (val == 1) { // If 1 received
    digitalWrite(LED1, HIGH); // turn the LED at pin 1 on
    digitalWrite(LED2, LOW); // other LED off
  }
  else if (val == 2) { // If 2 received
    digitalWrite(LED2, HIGH); // turn the LED at pin 2 on
    digitalWrite(LED1, LOW); //other LED off
  }
  delay(10); // Wait 10 milliseconds
}
