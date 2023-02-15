/*
///////////////////////////////////////////
 
 Demo request- working with value thresholds as triggers
 
 Moving mouse to right side of screen triggers random fill color for ellipse.
 
 Mouse press event function triggers random background color change.
 
 Notice that both of these execute momentary variable changes, using different strategies.
 
 ///////////////////////////////////////////
 */

//declare global variables for fill
float rf= 255;
float gf= 255;
float bf= 255;

//declare global variables for background
float rb= 255;
float gb= 255;
float bb= 255;

boolean rightSide; //tracks if mouse is on right side of screen


void setup() {
  size (700, 700);
  rectMode(CENTER);
}

void draw() {
  background (rb, gb, bb); //constant refresh with values stored in variables

  //if mouse is on right side of screen draw ellipse with random fill color
  if (mouseX> width/2) {
    if (rightSide== false) { //trigger variable change if rightSide variable is currently false
      rf= random(0, 255);
      gf= random(0, 255);
      bf= random(0, 255);
      rightSide=true; // since we are on right side now, we set this to true
    }
    fill(rf, gf, bf);
    ellipse (width/2, height/2, 100, 100);
  } else {
    rightSide= false;
    fill(255);
    rect(width/2, height/2, 100, 100);
  }
}

void mousePressed() { //event function executes code block one time only when triggered
  rb= random(0, 255);
  gb= random(0, 255);
  bb= random(0, 255);
}
