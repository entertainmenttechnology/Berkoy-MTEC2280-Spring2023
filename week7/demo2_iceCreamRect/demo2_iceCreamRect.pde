
/*
From demo on user-defined functions!
 Creating user-defined function for drawing ice cream cones...
 Building off prior example with another function.
 Press mouse to toggle on/off.
 
 FUNCTIONS HAVE THREE PARTS:
 *Return type
 *Function name
 *(Optional) parameters
 
 returnType functionName (parameters){
 statements;
 }
 
 */

boolean toggle= true; 

void setup() {
  size (500, 500);
  rectMode(CENTER); //x,y of rect will draw from center
  textAlign(CENTER);
}

void draw() {
  background (255);

  //call up the icecream function with different arguments
  icecream(50, 200, 65, 170, 230, 180, "MINT!"); //mint flavor
  icecream(200, 150, 75, 245, 120, 200, "BUBBLE GUM!"); //bubble gum flavor
  icecream(350, 300, 80, 80, 190, 230, "BLUE MOON!");  //blue moon flavor

  //call up the rectDisplay function with different arguments
  if (toggle) { //press mouse to toggle on/off
    rectRayDisplay(25, 450, 50, "W");
    rectRayDisplay(width/2, 450, 50, "O");
    rectRayDisplay(width-25, 450, 50, "W");
  }
}


void icecream(int x, int y, int diameter, int r, int g, int b, String flavor) {  
  fill(170, 120, 35); //brown cone color 
  triangle(x, y, x+50, y, x+25, y+100);
  fill (r, g, b); //customized ice cream color
  ellipse(x+25, y, diameter, diameter);
  textAlign(CENTER);
  textSize(22);
  text(flavor, x+25, y-50);
}

void rectRayDisplay(int x, int y, int size, String letter) {
  fill(245, 245, 60);
  rect(x, y, size, size);
  for (float i=0; i<size; i+=10) { //ray
    line(x, y, mouseX + i, mouseY+i);
  }
  fill(0);
  text(letter, x, y);
}

void mousePressed() {
  toggle=!toggle;
}
