//buzzfeed style generator

//By Alex + MaryAnne

int mystery;

//food choices
PImage img;
PImage img2;
PImage img3;
PImage img4;

//soulmate choices
PImage c2img;
PImage c2img2;
PImage c2img3;
PImage c2img4;

//sports choices
PImage c3img;
PImage c3img2;
PImage c3img3;
PImage c3img4;

//candidates choices
PImage c4img;
PImage c4img2;
PImage c4img3;
PImage c4img4;


int click = 0;

//picArray for soulmate
PImage papa, mj, eb, ps, pr, wr;
PImage [] picArray = new PImage [6];

//picArray for sports
PImage soccerball, shuttlecock, curling, bowlingball, football, basketball;
PImage [] sportsArray = new PImage [6];

//picArray for candidates
PImage BC, BS, DT, HC, JB, TC;
PImage [] candidateArray = new PImage [6];

//picArray for food
PImage apple, grapefruit, Kiwi, Peach, strawberry, watermelon;
PImage [] foodArray = new PImage [6];



void setup(){
size (1080,720);
imageMode(CENTER);

//1st cycle of images
img = loadImage("Page1buzzfeed.png");
  image(img,width/2,height/2);
img2 = loadImage("Page2buzzfeed.png");
img3 = loadImage("Page3buzzfeed.png");
img4= loadImage("Page4buzzfeed.png");

//2nd cycle of images
c2img = loadImage("soulmate1.png");
c2img2 = loadImage("soulmate2.png");
c2img3 = loadImage("soulmate3.png");
c2img4= loadImage("soulmate4.png");

//3rd cycle of images
c3img = loadImage("Sports1.png");
c3img2 = loadImage("Sports2.png");
c3img3 = loadImage("Sports3.png");
c3img4= loadImage("Sports4.png");

//4th cycle of images
c4img = loadImage("candidate1.png");
c4img2 = loadImage("candidate2.png");
c4img3 = loadImage("candidate3.png");
c4img4= loadImage("candidate4.png");

//array images soulmate
papa= loadImage("papasmurf.png");
mj = loadImage("michaeljordan.png");
eb = loadImage("easterbunny.png");
ps = loadImage("PatSummitt.png");
pr = loadImage("pinkranger.png");
wr = loadImage("winona.png");
picArray[0] = papa;
picArray[1] = mj;
picArray[2] = eb;
picArray[3] = ps;
picArray[4] = pr;
picArray[5] = wr;

//array images sports
soccerball = loadImage("soccerball.png");
shuttlecock = loadImage("shuttlecock.png");
curling = loadImage("curling.png");
bowlingball = loadImage("bowlingball.png");
football = loadImage("football.png");
basketball = loadImage("basketball.png");
sportsArray[0] = soccerball;
sportsArray[1] = shuttlecock;
sportsArray[2] = curling;
sportsArray[3] = bowlingball;
sportsArray[4] = football;
sportsArray[5] = basketball;

//array images candidates
BC = loadImage("BC.png");
BS = loadImage("BS.png");
DT = loadImage("DT.png");
HC = loadImage("HC.png");
JB = loadImage("JB.png");
TC = loadImage("TC.png");
candidateArray[0] = BC;
candidateArray[1] = BS;
candidateArray[2] = DT;
candidateArray[3] = HC;
candidateArray[4] = JB;
candidateArray[5] = TC;

//array images food
apple = loadImage("apple.png");
grapefruit = loadImage("grapefruit.png");
Kiwi = loadImage("Kiwi.png");
Peach = loadImage("Peach.png");
strawberry = loadImage("strawberry.png");
watermelon = loadImage("watermelon.png");
foodArray[0] = apple;
foodArray[1] = grapefruit;
foodArray[2] = Kiwi;
foodArray[3] = Peach;
foodArray[4] = strawberry;
foodArray[5] = watermelon;


}


void draw() {
  println (mystery);
  if (click == 1) { 
  image(img2,width/2,height/2);
  }
  if (click == 2) {
  image(img3,width/2,height/2);
  }  
  if (click == 3) {
  image(img4,width/2,height/2);
  image(picArray[mystery], width/2,height/2);
  }
  //second cycle begin
  if (click == 4) {
    image(c2img,width/2,height/2);
  }
  if (click == 5) {
    image(c2img2,width/2,height/2);
  }
  if (click == 6) {
    image(c2img3,width/2,height/2);
  }
  if (click == 7) {
    image(c2img4,width/2,height/2);
    image(sportsArray[mystery], width/2,height/2+50);
  }
  //third cycle begin
  if (click == 8) {
    image(c3img,width/2,height/2);
  }
  if (click == 9) {
    image(c3img2,width/2,height/2); 
  }
  if (click == 10) {
    image(c3img3,width/2,height/2);
  }
  if (click == 11) {
    image(c3img4,width/2,height/2);
    image(candidateArray[mystery], width/2,height/2);
  }
  //fourth cycle begin
  if (click == 12) {
    image(c4img,width/2,height/2);
  }
  if (click == 13) {
    image(c4img2,width/2,height/2);
  }
  if (click == 14) {
    image(c4img3,width/2,height/2);
  }
  if (click == 15) {
    image(c4img4,width/2,height/2);
    image(foodArray[mystery], width/2,height/2);
  }
   if (click == 16) { 
     image(img,width/2,height/2);
  }
  
  
  
}


void mouseClicked() {
  if ((mouseX > 150) && (mouseX < 450) &&
     (mouseY > 150) && ( mouseY < 570) || (mouseX>630) && (mouseX<930)
     && (mouseY > 150) && ( mouseY < 570) || (mouseX > 855) && (mouseX <1053) 
     && (mouseY > 567) && (mouseY <692)) {
  click++;
  mystery = int(random(0,5));
  if (click > 16) click = 1;
     }
  
  }
