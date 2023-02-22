/*tv by Shequana
right-click the mouse to summon ghost girl and hover 
over tv screen, while the mouse is pressed to make blood appear*/

float flickerX=10;
float flickerY=10;
int glass=10;
float feetD=350;
float feetU=300;
float hover=100;
int hh=350;
int hw=400;
void setup() {
  size(1200, 700);  
  ellipseMode(CENTER);
  rectMode(CENTER);
}
void draw() {
  background(179, 169, 154); 
  fill(11, 54, 53);
  noStroke();
  rect(0,0,width*2,height/2*2+100);
  for (int c=0; c<=width; c+=20) {
    for (int d=0; d<=height/2+40; d+=20) { 
      //wall
     noStroke();     
     fill(48, 82, 39);
      rect(c*5, d, 10, 10);
      fill(89, 6, 125);
      rect(c*4, d, 10, 10);
       fill(48, 82, 39);
      ellipse(c*3, d, 10, 10);
    }
  }
  fill(100, 100, 100);
  rect(width/2, height/2, 400, 350);  
  fill(0);
  rect(width/2, height/2, 300, 250);
  if (mousePressed) {
    for (int w=0; w<=290; w+=15) {
      for (int h=0; h<=250; h+=15) { 
        fill(255);
        rect(w+460, h+230, flickerX*random(1), flickerY);
      }
    }
  }
  if (mousePressed) {
    for (int a=0; a<=width; a+=10) {
      noStroke();
      fill(200, 200, 200, 1);
      ellipse(width/2, height/2, a, a);
    }
  }
  //shine
  fill(255, 255, 255, 100);
  rect(width/2+100, height/2-60, 50, 50, 50);
  if (mousePressed) {
    //hair
    fill(0);
    rect(mouseX, mouseY+100, 100, 300, 100);
    //arms
    //fill(255);
    //rect(mouseX+50, mouseY+90, 100, 10, 100);
    strokeWeight(10);
    stroke(255);
    line(mouseX, mouseY+80, mouseX+hover, mouseY+hover++);
    line(mouseX, mouseY+80, mouseX-hover, mouseY+hover++);
    if (hover>=150) {
      hover=100;
    }
    noStroke();
    //neck
    fill(255);
    rect(mouseX, mouseY+100, 10, 300, 100);
    //head
    fill(255);
    ellipse(mouseX, mouseY, 100, 100);
    //top hair
    fill(0);
    ellipse(mouseX, mouseY-30, 80, 40);
    //eyes
    fill(0);
    ellipse(mouseX+30, mouseY, 30, 30);
    ellipse(mouseX-30, mouseY, 30, 30);
    fill(155);
    ellipse(mouseX+30, mouseY, 10, 10);
    ellipse(mouseX-30, mouseY, 10, 10);
    //feet_l
    fill(0);
    ellipse(mouseX-10, mouseY+feetU+++50, 25, 40);
    fill(255);
    rect(mouseX-10, mouseY+feetU, 10, 100, 100);  
    //feet_r
    fill(0);
    ellipse(mouseX+10, mouseY+feetU+++50, 25, 40);
    fill(255);
    rect(mouseX+10, mouseY+feetU, 10, 100, 100); 
    if (feetU>=310) {
      feetU=300;
    }
    for (int e=10; e<=150; e+=15) {
      fill(156, 0, 0);
      rect(mouseX, mouseY+50+e, e/3, e, 20*random(1));
    }
  }
  noFill();
  rect(width/2, height/2, hw, hh);
  if (mousePressed&&mouseX>=hw&&mouseY>=height/3&&mouseX<hw+400&&mouseY<hh+100) {
    for (int w=0; w<=width; w+=15) {
      for (int h=0; h<=height; h+=15) { 
        fill(135, 14, 14);
        ellipse(w, h*random(1), 5, 10);
        if (h>=height) {
          h=0;
        }
        if (h==0) {
          h++;
        };
      }
    }
  }
}
