//////////////////////////////////////////////////////////////////////////////////////////
/*
   Pair with Processing motor sketch, to control servo with Processing interface.
   For more info on servos, see Adafruit Arduino - Lesson 14. Sweep
   https://learn.adafruit.com/adafruit-arduino-lesson-14-servo-motors/overview
*/
//////////////////////////////////////////////////////////////////////////////////////////


#include <Servo.h>  //include Arduino Servo library

Servo servo;  //creates new Servo object called servo


const int SERVOPIN = 9;
int angle = 0;   // Tracks servo position in degrees
int val = 0; // Tracks incoming value from Serial port


void setup() {
  servo.attach(SERVOPIN); //Specifies pin as output for servo
  Serial.begin(9600); // Start serial communication at 9600 bps
}


void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }
  if (val < 255) { //If val is less than 255
    servo.write(val);  //position of servo is val
    delay(15);
  }

  else if (val == 255) { //else if val is 255 do a motor sweep

    // scan from 0 to 180 degrees
    for (angle = 0; angle < 180; angle++)
    {
      servo.write(angle);
      delay(15);
    }
    // scan back from 180 to 0 degrees
    for (angle = 180; angle > 0; angle--)
    {
      servo.write(angle);
      delay(15);
    }
    val = 0; //reset val;
  }
}
