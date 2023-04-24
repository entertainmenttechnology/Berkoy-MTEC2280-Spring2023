///////////////////////////////////////////////////////
/*
DEMO: SENDING DATA FROM PROCESSING TO ARDUINO
Pair with Arduino demo sketch to control motor.

Motor angle corresponds with mouseY position.
Click button for a motor sweep.

Note: Be sure to specify correct port number below!
 */
///////////////////////////////////////////////////////

int val=0; //to send over Serial

//button interface
int buttonWidth=150;
int buttonHeight=50;
boolean button=false;

import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class

void setup() {
  size(500, 500); 
  background (255);
  
  //interface
  fill(0);
  textSize (22);
  textAlign (CENTER, CENTER);
  rectMode (CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[1]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  //interface
  fill(0);
  rect (width/2, height/2, buttonWidth, buttonHeight);
  text ("this way", width/2, 100);
  text ("that way", width/2, height-100);
  fill(255);
  text ("both ways", width/2, height/2);
  
  //mouse location controls communication to Serial 
  val= int (map (mouseY, 0, width, 0, 180)); //remaps mouseY to 0-180  
  myPort.write(val); //write to Serial
  println(val);  //print to console
  
  //NOTE: SENDING VALUES 0-180 TO MATCH ANGLE RANGE OF SERVO. OTHER MOTORS HAVE 360 CAPABILITIES.
}

void mousePressed() {
  //If button is pressed 
  if (mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY> height/2 - buttonHeight/2 && mouseY< height/2 + buttonHeight/2) {
    button=true;
    myPort.write(255); //write to Serial
  }
  //println (button); 
  button=false; //returns button state to false;
}
