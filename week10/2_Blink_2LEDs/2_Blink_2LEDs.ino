/*
  Blink 2 LEDs

 Connect LEDs to digital pins 12 and 13.

*/

const int LED1= 12;  // creates variable called LED1 and assigns value of 12
const int LED2= 13;  // creates variable called LED2 and assigns value of 13

// the setup function runs once at start up
void setup() {
  pinMode(LED1, OUTPUT);    // initialize pin as an output.
  pinMode(LED2, OUTPUT);    
}


// the loop function runs infinitely
void loop() {
  digitalWrite(LED1, HIGH);   // sends voltage to pin
  delay(1000);               // delays 1000 milliseconds (1 second)
  digitalWrite(LED1, LOW);    // stops sending voltage to pin
  delay(1000);               // delays 1 second
  digitalWrite(LED2, HIGH);   
  delay(2000);               
  digitalWrite(LED2, LOW);    
  delay(2000);               
}


// Modify the delay values to create different timing. Re-upload code to your board. 
