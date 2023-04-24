///////////////////////////////////////////////////////
/*
DEMO: SENDING DATA FROM PROCESSING TO ARDUINO
Pair with Arduino demo sketch to control LED fade.

Note: Be sure to specify correct port number below!
 */
///////////////////////////////////////////////////////

int val=0;

import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class

void setup() {
  size(500, 500); 
  background (255);
  fill(0);
  textSize (22);
  textAlign (CENTER, CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[1]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  //text stuff
  text ("dimmer", width/4, height/2);
  text ("brighter", width-width/4, height/2);

  //mouse location controls communication to Serial 
  val= int (map (mouseX, 0, width, 0, 255)); //remaps mouseX to 0-255
  myPort.write(val); 
  println(val);
  
  //NOTE: IMPORTANT TO SEND VALUES 0-255 AS ARDUINO RECEIVES DATA IN BYTE-SIZE
}
