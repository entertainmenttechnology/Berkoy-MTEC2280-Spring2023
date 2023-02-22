/*
////////////////////////////////////////////
 WHILE LOOPS:
 From demo exploring: 
 while loops
 ////////////////////////////////////////////
 */


void setup() {
  size(700, 700);
  rectMode(CENTER);
}

void draw() {
  background (255, 220, 200);

  int x= 50; //LOCAL variable!
  //while loop drawing ellipses from left to right
  while (x<width) { //code in braces runs if boolean is true
    ellipse (x, height/2, 75, 75);
    x= x+100;
  }  

  int y= 50;
  //while loop drawing rectangles from top to mid screen
  while (y<height/2) {
    rect (width/2, y, 50, 50);
    y= y+75;
  }
}
