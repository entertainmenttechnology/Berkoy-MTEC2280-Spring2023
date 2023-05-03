/*
  Serial Call and Response
  Adapted from: http://www.arduino.cc/en/Tutorial/SerialCallResponse
  Original example code is in the public domain.

  This program sends an ASCII A (byte of value 65) on startup and repeats that
  until it gets some data in. Then it waits for a byte in the serial port, and
  sends two sensor values whenever it gets a byte in.

  The circuit:
  - analogue sensor attached to analog input A0
  - second analog sensor attached to analog input A1
  - digital sensor attached to digital I/O 8

  modified 24 Nov 2018
  by A Berkz
  created 26 Sep 2005
  by Tom Igoe
  modified 24 Apr 2012
  by Tom Igoe and Scott Fitzgerald
  Thanks to Greg Shakar and Scott Fitzgerald for the improvements
*/

//Pins
const int SENSOR1= A0;
const int SENSOR2= A1;
const int SENSOR3= 8;

//Tracking values of sensors
int sensor1val = 0;    
int sensor2val = 0;   
int sensor3val = 0;  

// incoming serial byte
int inByte = 0;       


void setup() {
  Serial.begin(9600);  // start serial communication:
  while (!Serial) {  //if serial not connected
    ;   // wait for serial port to connect. 
  }

  //set pins as inputs
  pinMode(SENSOR1, INPUT);  
  pinMode(SENSOR2, INPUT);  
  pinMode(SENSOR3, INPUT);  

  establishContact();  // send a byte to establish contact until receiver responds
}

void loop() {
  // if we get a valid byte, read sensor inputs:
  if (Serial.available() > 0) {
    // get incoming byte:
    inByte = Serial.read();
    
    // read first analog input, divide by 4 to make the range 0-255:
    sensor1val = analogRead(SENSOR1) / 4;
    // delay 10ms to let the ADC recover:
    delay(10);

     // read second analog input
    sensor2val = analogRead(SENSOR2) / 4;
    // delay 10ms to let the ADC recover:
    delay(10);
    
    // read digital input and remap values to 0 or 255
    sensor3val =  map(digitalRead(SENSOR3), 0, 1, 0, 255);
    
    // send sensor values to Serial port:
    Serial.write(sensor1val);
    Serial.write(sensor2val);
    Serial.write(sensor3val);
  }
}

void establishContact() {
  while (Serial.available() <= 0) {
    Serial.print('A');   // send a capital A
    delay(300);
  }
}
