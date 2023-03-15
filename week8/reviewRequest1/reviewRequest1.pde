/*
Special request:
How to make an image disappear after pressing a key and 5 seconds have then passed.

Interaction: press any key and wait 
*/


int timer= 5000;
int currentTime=0;
int savedTime=0;
boolean displayEllipse=true;
boolean kp= false;

void setup(){
  size(500,500);
}

void draw(){
  currentTime=millis();
  background(255);
  if (displayEllipse){
    ellipse(width/2,height/2,100,100);
  }
  if (kp){
    if (currentTime-savedTime > timer){
      displayEllipse=false;
    }
  }
}

void keyPressed(){
  kp=true;
  savedTime=currentTime;
}
