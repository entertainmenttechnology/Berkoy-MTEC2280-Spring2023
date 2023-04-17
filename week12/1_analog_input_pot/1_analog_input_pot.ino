/*
  Analog sensor input with a potentiomenter 
  controlling PWM output to an LED.
  
  Connect potentiometer middle pin to Analog A0. Connect one outer pin to ground, the other to 5V.
  Connect LED (annode side) to PWM pin 11. Connect cathode side to 220-230 ohm resistor and to ground.

  Uncomment for Serial communication.
*/

const int LED = 11;  //LED pin
const int potPin = A0;  //potentiometer middle pin
int reading = 0; // to track potentiometer reading

void setup() {
  pinMode (LED, OUTPUT);  // initialize LED pin as digital output
  //note: no need to initialize analog inputs as those pins can only be inputs
  
  //Serial.begin(9600);  // initialize serial communication at 9600 bits per second
}

void loop() {
  reading = analogRead(potPin);     // reads pot 0 to 1023            
  analogWrite (LED, reading/4);  // reduces value to match PWM output range 0-255

  //Serial.println (reading/4);  // prints to Serial monitor
}
