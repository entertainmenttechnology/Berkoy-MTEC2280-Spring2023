/********* VARIABLES *********/
//Fusion is where ping pong shrek and deep ocean(flappy bird) combine
//Avoid the wall by controlling sherk's head movement by using the pillar. Touching
//the wall will take away sherk's health.

import processing.sound.*;
SoundFile file;
String audioName = "Sherkface.mp3";
String path;

int gameScreen = 0;

// gameplay settings
float gravity = .3;
float airfriction = 0.00001;
float friction = 0.1;

// scoring
int score = 0;
int maxHealth = 100;
float health = 100;
float healthDecrease = 1;
int healthBarWidth = 60;

// ball settings
PImage Sherkface;
float SherkX, SherkY;
float SherkSpeedVert = 0;
float SherkSpeedHorizon = 0;
float SherkSize = 30;
color SherkColor = color(0);

// racket settings
color racketColor = color(0);
float racketWidth = 100;
float racketHeight = 10;

// wall settings
int wallSpeed = 5;
int wallInterval = 1000;
float lastAddTime = 0;
int minGapHeight = 200;
int maxGapHeight = 300;
int wallWidth = 80;
color wallColors = color(44, 62, 80);
// This arraylist stores data of the gaps between the walls. Actuals walls are drawn accordingly.
// [gapWallX, gapWallY, gapWallWidth, gapWallHeight, scored]
ArrayList<int[]> walls = new ArrayList<int[]>();

/********* SETUP BLOCK *********/

void setup() {
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  file.play();
  size(500, 500);
  // set the initial coordinates of the ball
  Sherkface = loadImage("Sherkface.png");
  SherkX=width/4;
  SherkY=height/5;
  smooth();
}


/********* DRAW BLOCK *********/

void draw() {
  // Display the contents of the current screen
  if (gameScreen == 0) { 
    initScreen();
  } else if (gameScreen == 1) { 
    gameScreen();
  } else if (gameScreen == 2) { 
    gameOverScreen();
  }
}


void initScreen() {
  background(4, 12, 241);
  textAlign(CENTER);
  fill(52, 73, 94);
  textSize(70);
  text("FUSION", width/2, height/2);
  textSize(15); 
  text("Click to start", width/2, height-30);
}
void gameScreen() {
  background(1, 100, 241);
  drawRacket();
  watchRacketBounce();
  drawSherk();
  applyGravity();
  applyHorizontalSpeed();
  keepInScreen();
  drawHealthBar();
  printScore();
  wallAdder();
  wallHandler();
}
void gameOverScreen() {
  background(44, 62, 80);
  textAlign(CENTER);
  fill(236, 240, 241);
  textSize(12);
  text("Your Score", width/2, height/2 - 120);
  textSize(130);
  text(score, width/2, height/2);
  textSize(15);
  text("Click to Restart", width/2, height-30);
}


/********* INPUTS *********/

public void mousePressed() {
  // if we are on the initial screen when clicked, start the game 
  if (gameScreen==0) { 
    startGame();
  }
  if (gameScreen==2) {
    restart();
  }
}



/********* OTHER FUNCTIONS *********/

// This method sets the necessery variables to start the game  
void startGame() {
  gameScreen=1;
}
void gameOver() {
  gameScreen=2;
}

void restart() {
  score = 0;
  health = maxHealth;
  SherkX=width/4;
  SherkY=height/5;
  lastAddTime = 0;
  walls.clear();
  gameScreen = 1;
}

void drawSherk() {
  fill(SherkColor);
  image(Sherkface, SherkX, SherkY, SherkSize, SherkSize);
}
void drawRacket() {
  fill(racketColor);
  rectMode(CENTER);
  rect(mouseX, mouseY, racketWidth, racketHeight, 5);
}

void wallAdder() {
  if (millis()-lastAddTime > wallInterval) {
    int randHeight = round(random(minGapHeight, maxGapHeight));
    int randY = round(random(0, height-randHeight));
    // {gapWallX, gapWallY, gapWallWidth, gapWallHeight, scored}
    int[] randWall = {width, randY, wallWidth, randHeight, 0}; 
    walls.add(randWall);
    lastAddTime = millis();
  }
}
void wallHandler() {
  for (int i = 0; i < walls.size(); i++) {
    wallRemover(i);
    wallMover(i);
    wallDrawer(i);
    watchWallCollision(i);
  }
}
void wallDrawer(int index) {
  int[] wall = walls.get(index);
  // get gap wall settings 
  int gapWallX = wall[0];
  int gapWallY = wall[1];
  int gapWallWidth = wall[2];
  int gapWallHeight = wall[3];
  // draw actual walls
  rectMode(CORNER);
  noStroke();
  strokeCap(ROUND);
  fill(wallColors);
  rect(gapWallX, 0, gapWallWidth, gapWallY, 0, 0, 15, 20);
  rect(gapWallX, gapWallY+gapWallHeight, gapWallWidth, height-(gapWallY+gapWallHeight), 15, 15, 0, 0);
}
void wallMover(int index) {
  int[] wall = walls.get(index);
  wall[0] -= wallSpeed;
}
void wallRemover(int index) {
  int[] wall = walls.get(index);
  if (wall[0]+wall[2] <= 0) {
    walls.remove(index);
  }
}

void watchWallCollision(int index) {
  int[] wall = walls.get(index);
  // get gap wall settings 
  int gapWallX = wall[0];
  int gapWallY = wall[1];
  int gapWallWidth = wall[2];
  int gapWallHeight = wall[3];
  int wallScored = wall[4];
  int wallTopX = gapWallX;
  int wallTopY = 0;
  int wallTopWidth = gapWallWidth;
  int wallTopHeight = gapWallY;
  int wallBottomX = gapWallX;
  int wallBottomY = gapWallY+gapWallHeight;
  int wallBottomWidth = gapWallWidth;
  int wallBottomHeight = height-(gapWallY+gapWallHeight);

  if (
    (SherkX+(SherkSize/2)>wallTopX) &&
    (SherkX-(SherkSize/2)<wallTopX+wallTopWidth) &&
    (SherkY+(SherkSize/2)>wallTopY) &&
    (SherkY-(SherkSize/2)<wallTopY+wallTopHeight)
    ) {
    decreaseHealth();
  }
  if (
    (SherkX+(SherkSize/2)>wallBottomX) &&
    (SherkX-(SherkSize/2)<wallBottomX+wallBottomWidth) &&
    (SherkY+(SherkSize/2)>wallBottomY) &&
    (SherkY-(SherkSize/2)<wallBottomY+wallBottomHeight)
    ) {
    decreaseHealth();
  }

  if (SherkX > gapWallX+(gapWallWidth/2) && wallScored==0) {
    wallScored=1;
    wall[4]=1;
    score();
  }
}

void drawHealthBar() {
  noStroke();
  fill(189, 195, 199);
  rectMode(CORNER);
  rect(SherkX-(healthBarWidth/2), SherkY - 30, healthBarWidth, 5);
  if (health > 60) {
    fill(46, 204, 113);
  } else if (health > 30) {
    fill(230, 126, 34);
  } else {
    fill(231, 76, 60);
  }
  rectMode(CORNER);
  rect(SherkX-(healthBarWidth/2), SherkY - 30, healthBarWidth*(health/maxHealth), 5);
}
void decreaseHealth() {
  health -= healthDecrease;
  if (health <= 0) {
    gameOver();
  }
}
void score() {
  score++;
}
void printScore() {
  textAlign(CENTER);
  fill(0);
  textSize(30); 
  text(score, height/2, 50);
}

void watchRacketBounce() {
  float overhead = mouseY - pmouseY;
  if ((SherkX+(SherkSize/2) > mouseX-(racketWidth/2)) && (SherkX-(SherkSize/2) < mouseX+(racketWidth/2))) {
    if (dist(SherkX, SherkY, SherkX, mouseY)<=(SherkSize/2)+abs(overhead)) {
      makeBounceBottom(mouseY);
      SherkSpeedHorizon = (SherkX - mouseX)/10;
      // racket moving up
      if (overhead<0) {
        SherkY+=(overhead/2);
        SherkSpeedVert+=(overhead/2);
      }
    }
  }
}
void applyGravity() {
  SherkSpeedVert += gravity;
  SherkY += SherkSpeedVert;
  SherkSpeedVert -= (SherkSpeedVert * airfriction);
}
void applyHorizontalSpeed() {
  SherkX += SherkSpeedHorizon;
  SherkSpeedHorizon -= (SherkSpeedHorizon * airfriction);
}
// ball falls and hits the floor (or other surface) 
void makeBounceBottom(float surface) {
  SherkY = surface-(SherkSize/2);
  SherkSpeedVert*=-1;
  SherkSpeedVert -= (SherkSpeedVert * friction);
}
// ball rises and hits the ceiling (or other surface)
void makeBounceTop(float surface) {
  SherkY = surface+(SherkSize/2);
  SherkSpeedVert*=-1;
  SherkSpeedVert -= (SherkSpeedVert * friction);
}
// ball hits object from left side
void makeBounceLeft(float surface) {
  SherkX = surface+(SherkSize/2);
  SherkSpeedHorizon*=-1;
  SherkSpeedHorizon -= (SherkSpeedHorizon * friction);
}
// ball hits object from right side
void makeBounceRight(float surface) {
  SherkX = surface-(SherkSize/2);
  SherkSpeedHorizon*=-1;
  SherkSpeedHorizon -= (SherkSpeedHorizon * friction);
}
// keep ball in the screen
void keepInScreen() {
  // ball hits floor
  if (SherkY+(SherkSize/2) > height) { 
    makeBounceBottom(height);
  }
  // ball hits ceiling
  if (SherkY-(SherkSize/2) < 0) {
    makeBounceTop(0);
  }
  // ball hits left of the screen
  if (SherkX-(SherkSize/2) < 0) {
    makeBounceLeft(0);
  }
  // ball hits right of the screen
  if (SherkX+(SherkSize/2) > width) {
    makeBounceRight(width);
  }
}
