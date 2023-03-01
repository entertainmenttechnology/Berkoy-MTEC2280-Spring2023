/* 
//// 3D CAT ///
move mouse X-axis > whisker
move mouse Y-axis > 3D effects
mouse press > 3D glasses
*/

PImage img;
PImage imgG;
PImage imgR;
PImage imgGG;
PFont font;


float easing =0.005;
float offset = 0;

void setup() {
  size(1280, 720);
  img = loadImage("cat01.png");
  imgG = loadImage("cat01G.png");
  imgR = loadImage("cat01R.png");
  imgGG = loadImage("cat01GG.png");
  font = createFont("pioneern.ttf", 120);
  textFont(font);
}

void draw() {
  background(201, 203, 122);
  image(img, 0, 0);
  //Left
  for (int y =270; y < 350; y += 30) {
    float x = 800;
    float mx = mouseX/2;
    float my = mouseX/10;
    float offsetA = random(-my, my);
    float offsetB = random(-my, my);
    line(900, 275, x-offsetA, y-offsetB);
  }
  for (int y =310; y < 390; y += 30) {
    float x = 800;
    float my = mouseX/10;
    float offsetA = random(-my, my);
    float offsetB = random(-my, my);
    line(925, 280, x-offsetA, y-offsetB);
  }
  //Right
  for (int y =160; y < 240; y += 30) {
    float x = 1125;
    float mx = mouseX/2;
    float my = mouseX/10;
    float offsetA = random(-my, my);
    float offsetB = random(-my, my);
    line(1025, 239, x-offsetA, y-offsetB);
  }
  for (int y =250; y < 330; y += 30) {
    float x = 1125;
    float my = mouseX/10;
    float offsetA = random(-my, my);
    float offsetB = random(-my, my);
    line(1035, 275, x-offsetA, y-offsetB);
  }
  //Text
  textSize(200);
  text("3D", 120, 295);
  textSize(200);
  text("cat", 260, 470);

  //Green
  float targetOffset = map(mouseY, 0, height, -40, 0);
  offset +=(targetOffset-offset)*1.5;
  image(imgG, 0+offset, 0);

  //Red
  float smallOffset = map(mouseY, 0, height, 40, 0);
  offset +=(smallOffset-offset)*1.5;
  image(imgR, 0+offset, 0);
  
  if(mousePressed){
    image(imgGG,0,0);
  }
}