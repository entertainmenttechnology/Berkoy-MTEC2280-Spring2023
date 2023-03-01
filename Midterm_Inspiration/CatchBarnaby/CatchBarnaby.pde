//Catch Barnaby part 3

//by Emily

PImage boat;
PFont font;
PImage Barnaby;
PImage HAHA;
PImage Fishing;
PImage Fish;
PImage Thief;
PImage Knoxville;
float x = 100;
float y = 100;
int w = 130;
int h = 130;
int timer= 100;
int currentTime = 0;
int savedTime= 0;
int q=0;
int scene;

void setup() {
  size(1080, 720);
  background(255);
  text(255, 255, 255);
  boat = loadImage("boat.png");
  font = loadFont("SinhalaMN-Bold-48.vlw");
  Barnaby = loadImage("Barnaby.png");
  HAHA = loadImage("barnaby2.png");
  Fishing = loadImage("Fishing.png");
  Fish = loadImage("Fish.png");
  Thief = loadImage("thief.png");
  Knoxville = loadImage("knoxville.png");

  scene=0;
}

void draw() {

  if (scene == 0) {
    Fishing.resize(1080, 720);
    image(Fishing, 0, 0);
  }

  if (scene == 2) {
    Fish.resize(1080, 720);
    image(Fish, 0, 0);
  }

  if (scene == 3) {
    Thief.resize(1080, 720);
    image(Thief, 0, 0);
  }

  if (scene == 1) {
    boat.resize(1080, 720);
    image(boat, 0, 0);
    textSize(100);
    textFont(font, 100);
    fill(255);
    text("Catch Barnaby!", 295, 100);

    if ((mouseX > x) && (mouseX < x+w) &&
      (mouseY > y) && (mouseY < y+h)) {
      fill(0);
      x= random(0+100, width-200);
      y= random(0+100, height-200);
      println ("in boundary");
    } else {
      fill(255);
      println ("out of boundary");
    }
    //rect(x, y, w, h);

    image(Barnaby, x, y); 
    Barnaby.resize(125, 125);

    if (mouseX < 0) {
      cursor(CROSS);
    } else {
      cursor(HAND);
    }

    currentTime= millis();
    if ((currentTime- savedTime) > timer) {
      // something will go here
      savedTime= currentTime;
      q+=5;
    }

    strokeWeight(40.0);
    strokeCap(SQUARE);
    stroke(255);
    line(q, height/1.1, 0, 655);
    fill(255);
  }
  if (q== width) {
    scene= 4;
  } 
  if (scene== 4) {
    text("game over", 350, 350); 
    image(HAHA, 620, 200);
  }
}



void keyPressed() {

  if (key == RETURN || key == ENTER) {
    if (scene==0) {
      scene=2;
    } else if (scene == 2) {
      scene=3;
    } else if (scene == 3) {
      scene=1;
    }
  }
}




void mouseClicked() {
  fill(255, 0, 0);
  textSize(100);
  textFont(font, 100);
  text("Catch Barnaby!", 295, 100);
  if (scene==4) {
    q=0;
    scene=1;
  }
}

void mousePressed() {
  fill(255, 0, 0);
  textSize(100);
  textFont(font, 100);
  text("Catch Barnaby!", 295, 100);
}
