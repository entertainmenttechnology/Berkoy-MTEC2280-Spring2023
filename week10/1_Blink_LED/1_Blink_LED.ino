/*
  Blink

  Turns an LED on for one second, then off for one second, in an infinite loop.
  Create LED circuit with LED connected to digital pin 13.

 Modified from Arduino example code:
  http://www.arduino.cc/en/Tutorial/Blink

*/


// Use comments to make your code more readable. 
// Comments get ignored when the program runs.

// Pay attention to punctuation, spelling, and capitalization. 
// But spacing     does not matter.


const int LED= 13;  // creates variable called LED and assigns value of 13

// the setup function runs once at start up
void setup() {
  pinMode(LED, OUTPUT);    // initialize pin as an output.
}


// the loop function runs infinitely
void loop() {
  digitalWrite(LED, HIGH);   // sends voltage to pin
  delay(1000);               // delays 1000 milliseconds (1 second)
  digitalWrite(LED, LOW);    // stops sending voltage to pin
  delay(1000);               // delays 1 second
}


// Modify the value of the delay functions. Re-upload code to your board. 
