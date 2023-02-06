// Draw Pro - J. Martinez

// Click to Draw
// A - Random Squares ( HOLD )
// Q - Random Circles ( HOLD )
// S - Increase size of shape ( HOLD )
// D - Decrease size of shape ( HOLD )
// C - Clear background (WHITE)
// B - Clear background (BLACK)
// R - Draw with squares ( HOLD 'R' and move mouse around )

float r;
float g;
float b;
float s;
float x;
float y;
float d;

int size = 4;
int line = 10;

void setup() {
  size(1080, 720);
  background(255);
}

void draw() {

  if (mousePressed == true) {  
    fill(0);
    stroke(line);
    strokeWeight(size);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else if (keyPressed)  {
    if (key == 'r') {
      fill(r, g, b);
      stroke(1);
      rect(mouseX, mouseY, 25, 25);
    }
  }
  r = random(255);
  g = random(255);
  b = random(255);
  s = random(25);
  x = random(width);
  y = random(height);
  d = random(100);
}

void keyPressed() {

  if (keyPressed) {
    if (key == 'c') {
      background(255);
      line = 0;
    }
  }

  if (keyPressed) {
    if (key == 'b') {
      background(0);
      line = 255;
    }
  }

  if (keyPressed) {
    if (key == 's') {
      size = size + 5;
    } else {
      if (key == 'd') {
        size = size - 5;
      }
      if ( size < 0) {
        size = 5;
      }
    }
  }

  if (keyPressed) {
    if (key == 'a') {
      fill(r, g, b);
      stroke(0);
      strokeWeight(1);
      rect(x, y, s, s);
    }
  }

  if (keyPressed) {
    if (key == 'q') {
      fill(r, g, b);
      stroke(0);
      strokeWeight(1);
      ellipse(x, y, d, d);
    }
  }
}
