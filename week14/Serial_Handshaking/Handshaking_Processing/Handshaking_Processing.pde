/* Processing sketch to run with Handshaking_Arduino example:
 
From: http://www.arduino.cc/en/Tutorial/SerialCallResponse
 Original example code is in the public domain.
 
 */


import processing.serial.*; //import serial library

Serial myPort;         // create serial object

int[] serialInArray = new int[3];    // Create array to store incoming bytes
int serialCount = 0;                 // A count of how many bytes we receive
boolean firstContact = false;        // Whether we're receiving data

int xpos, ypos;        // Position of the ball
int bgcolor;         // Background color

void setup() {
  size(256, 256);  
  noStroke();      

  // starting position of the ball 
  xpos = width / 2;
  ypos = height / 2;

  // Print a list of the serial ports for debugging purposes
  printArray(Serial.list());

  // Check console and change [port] to open whatever port you're using.
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);  // assign port at specified communication rate
}

void draw() {
  background(bgcolor);
  fill(255, 0, 0);
  ellipse(xpos, ypos, 20, 20);
}


void serialEvent(Serial myPort) {
  // read a byte from the serial port:
  int inByte = myPort.read();
  // if this is the first byte received, and it's an A, clear the serial
  // buffer and note that you've had first contact from the microcontroller.
  // Otherwise, add the incoming byte to the array:
  if (firstContact == false) {
    if (inByte == 'A') {
      myPort.clear();          // clear the serial port buffer
      firstContact = true;     // you've had first contact from the microcontroller
      myPort.write('A');       // ask for more
    }
  } else {
    // Add the latest byte from the serial port to array:
    serialInArray[serialCount] = inByte;
    serialCount++;

    // If we have 3 bytes:
    if (serialCount > 2 ) {
      xpos = serialInArray[0];
      ypos = serialInArray[1];
      bgcolor = serialInArray[2];

      // print the values (for debugging purposes only):
      println(xpos + "\t" + ypos + "\t" + bgcolor);

      // Send a capital A to request new sensor readings:
      myPort.write('A');
      // Reset serialCount:
      serialCount = 0;
    }
  }
}
