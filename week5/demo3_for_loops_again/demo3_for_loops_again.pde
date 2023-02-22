/*
draw a series of rectangles nested within each other
 */



void setup() {
  size(500, 500);
  rectMode(CENTER);
}


void draw() {
  background(255);
  for (int i= width; i>=0; i-=50) {
    rect(width/2, height/2, i, i);
  }
}
