
/*
From demo on user-defined functions!
Creating user-defined function for drawing ice cream cones...

FUNCTIONS HAVE THREE PARTS:
  *Return type
  *Function name
  *(Optional) parameters
  
  returnType functionName (optional parameters){
    statements;
  }
  
*/



void setup() {
  size (500, 500);
  textAlign(CENTER);
  textSize(22);
}

void draw() {
  background (255);
  //call up the icecream function with different arguments
  icecream(50, 200, 65, 170, 230, 180, "MINT!"); //mint flavor
  icecream(200, 150, 75, 245, 120, 200, "BUBBLE GUM!"); //bubble gum flavor
  icecream(350, 300, 80, 80, 190, 230, "BLUE MOON!");  //blue moon flavor
}


void icecream(int x, int y, int diameter, int r, int g, int b, String flavor) {  
  fill(170, 120, 35); //brown cone color 
  triangle(x, y, x+50, y, x+25, y+100);
  fill (r, g, b); //customized ice cream color
  ellipse(x+25, y, diameter, diameter);
  text(flavor, x+25, y-50);
}
