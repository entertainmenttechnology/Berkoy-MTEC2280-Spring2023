
/*
The case of the forever falling ellipses
 */


float y= 0;  

void setup() {
  size (500, 500);
}

void draw() {
  background(0);
  
  for (int x=0; x<=width; x+=50) {
    ellipse (x, y, 50, 50);
  }

  y++;  //y value of ellipse increments after we exit the for loop

  if (y>=height+50) { //if y value reaches 50 pixels below canvas
    y=-50;  //sets y value to 50 pixels above canvas
  }
  
  println ("y=:  " + y); // printing to console
}
