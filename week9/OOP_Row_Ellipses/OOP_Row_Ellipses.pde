/*
Sets up a row of 5 ellipses.
When hovering mouse over ellipse, each one fades and falls.
*/


Magnet[] magnet= new Magnet [5]; //declare object array

void setup() {
  size (500, 500);
  //initialize each object by calling constructor
  for (int i=0; i<magnet.length; i++) {   
    magnet[i]= new Magnet(i*100+50, 100); //pass ellipse x,y position into each object
  }
}

void draw() {
  size (500, 500);
  background(255);
  for (int i=0; i<magnet.length; i++) {
    magnet[i].display();
    magnet[i].fall();
  }
}

class Magnet {
  //instance variables
  float x;
  float y;
  int dist=50;
  int fade=0;
  float drop=0;
  boolean goFall=false; 

  //constructor
  Magnet(float tempX, float tempY) {
    x= tempX; 
    y= tempY;
  }

  //methods
  void display() {
    fill(fade);
    ellipse (x, y+drop, dist, dist);
  }

  void fall() {
    if (mouseX>x-dist/2 && mouseX<x+dist/2 && mouseY>y-dist/2 && mouseY< y+dist/2) {
      goFall=true;
    } 
    if (goFall==true) {
      if (fade<255) {
        fade++;
      }
      if (drop<height+dist) {
        drop++;
      }
    }
  }
}
