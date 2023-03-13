/*
//////////////////////////////////////////////
 another demo on state changes
 
 press 1, 2, 3 key to change the animation scene / state
 
 (note: using key press for state changes is a good strategy for early testing of
 program flow and functionality, before shifting to a more intuitive
 interactive experience for the user.)
 
 //////////////////////////////////////////////
 */

int scene=1; //creating state variable called scene
float expand=0; //used in scene 3 animation



void setup() {
  size (500, 500);
}


void draw() {
  background(0);
  if (scene!=3) {  //if scene does not = 3
    expand=0;  //reset value of expand
  }
  if (scene==1) {
    doScene1();
  } else if (scene==2) {
    doScene2();
  } else if (scene==3) {
    doScene3();
    println(scene);
  }
}


void keyPressed() {
  if (key== '1') {
    scene=1;
  } else if (key== '2') {
    scene=2;
  } else if (key=='3') {
    scene=3;
  }
}

void doScene1() {
  ellipse(width/2, height/2, 100, 100);
}

void doScene2() {
  ellipse(width/2, height/2, 10, 10);
}

void doScene3() {
  //spiral animation
  translate(width/2, height/2);
  for (float i=0; i<200; i++) {
    rotate(0.1);
    ellipse(i+expand, 0+expand, 10, 10);
  }
  expand+=0.2;
}
