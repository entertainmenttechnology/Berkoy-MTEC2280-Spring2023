//PICKLE RICK (pt2) by ELIJAH NORMAN

//Instructions:
//Move Mouse Around Screen to see Pickle Rick's Reaction
//Click Mouse to Activate Lazers
//Or Simply Do Both at the Same Time

//Enjoy


float nozeX=549;
float nozeY=230;
float uniY=117;
float eyezX=547;
float eyezY=310;

void setup() {
  //size
  size(1080,720);

}
  
void draw() {
  stripes();
  bodyshapeParts();
  rickbodyParts();
  rickReact(); 
 
 //Random Lazers
  stroke(random(460), 1, 1);
  strokeWeight(8);
  
  if(mousePressed==true & mouseButton==LEFT)
  {line(random(width), random(height), random(width), random(height));}
  
  else
    
  if(mousePressed==true & mouseButton==RIGHT)
  {line(random(width), random(height), random(width), random(height));}
}

void stripes() {
  // BLUE and PURPLE rectangles as stripes FOR Background
  frameRate(30);
  for (float y=-70; y<height; y+=110) {
    noStroke(); 
    
// BLUE stripes
    fill(0,0,255);
    rect(0, y, width, 60);
    
//PURPLE stripes
    fill(197,0,255);
    rect (0, y-50, width, 60);
    
  }
}
  void bodyshapeParts() {
  strokeWeight(3);
  fill(21, 154, 11);
  rect(400,45,315,665,900);
  //lighter part of body
  strokeWeight(0);
  fill(82, 203, 72);
  rect(452,65,220,600,900);
  }
  
  void rickbodyParts() {
 
 //rick noze
  fill(10, 180, 72);
  strokeWeight(3);
  rect(nozeX,nozeY,26,75,20);
  
//draws mouth
  fill(0);
  rect(463, 315,199,86,100);
  
//draw PICKLE Tongue
  strokeWeight(2);
  fill(122, 25,20);
  rect(477,370,87,30,200);
  
//draw Teef
  fill(234,225,175);
  strokeWeight(1);
  //draw top teef
  rect(482,316,15,14,20);
  rect(506,314,17,15,20);
  rect(530,314,16,14,20);
  rect(554,314,16,14,20);
  rect(578,314,16,14,20);
  rect(602,314,17,15,20);
  rect(626,316,15,14,20);
  //draw bottom teef
  rect(482,386,15,14,20);
  rect(506,387,17,15,20);
  rect(530,387,16,14,20);
  rect(554,387,16,14,20);
  rect(578,387,16,14,20);
  rect(602,387,17,15,20);
  rect(626,386,15,14,20);

//draws eyez
  fill(255);
  strokeWeight(3);
  ellipse(507, 215,105, 105);
  ellipse(617, 215,105, 105);
//black pupil
  fill(0);
  ellipse(eyezX-40, eyezY-95,12, 12);
  ellipse(eyezX+70, eyezY-95,12, 12);
  
//draw UNiBr0W
  strokeWeight(2);
  fill(183,231,252);
  rect(444,uniY,233,25,300);
 
  }

  void rickReact() {
  
  if (mouseY>0&mouseY<height&mouseX>0&mouseX<width) {
    //mouseX reactions
    nozeX=550+(mouseX-550)/50;
    eyezX=550+(mouseX-550)/20;
    //mouseY reactions
    uniY=140+(mouseY-125)/40;
    nozeY=220+(mouseY-200)/50;
    eyezY=300+(mouseY)/25; 
  }
}
