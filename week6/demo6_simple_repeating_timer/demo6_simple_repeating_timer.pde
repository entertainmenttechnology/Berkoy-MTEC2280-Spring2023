//simple repeating timer



int timer= 2000; //setting up timer variable for 2000 millisecond trigger
int currentTime=0; //tracking millis() clock
int savedTime=0; // temp saved times, needed for comparison

int ellipseX=0; //variable for x value of ellipse


void setup() {
  size(500, 500);
}

void draw() {
  currentTime=millis();  //update currentTime in draw so that it is continuously updating
  background(255);
  ellipse(ellipseX, height/2, 100, 100);

  //if 2 seconds have passed since last saved time, execute code block
  if (currentTime-savedTime > timer) { 
    ellipseX+=20; //increment ellipseX value by 20
    fill(random(255), random(255), random(255)); //change fill to random color
    savedTime=currentTime; //assign value of currentTime to savedTime
  }
  println ("currentTime: " + currentTime);
  println ("savedTime: " + savedTime);
}
