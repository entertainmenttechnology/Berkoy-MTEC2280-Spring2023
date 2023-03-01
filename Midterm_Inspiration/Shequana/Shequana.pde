//Shequana Garnett 
//Bad Kitty 9
//////////////////////////////////instructions///////////////////////////////////////////////////////////
// use a and d or left and right arrow keys to move the screen left and right
// click on objects in the sceen to destroy them (there are 10 item types in all)
//press 1 or click on restart to restart the game (WILL reset game)
//press 2 or press 2 to go to kitchen scene (will not reset game)
//press 3 or press 3 to go to livingroom scene (will not reset game)
//press 4 or press 4 to go to bedroom scene (will not reset game)
//if items are unresposnive, they act as groups instead of indivudal items, so try clicking around the area of the object or press a or d to shift the scene a bit, to reset poition

int scene=1;
float expand=0;
float move=0;
float c=170;
float body=80;
boolean pounce;
float scratch=0;
int score=0;
int fri1;
float fri=0;
float fall=0;
float test=0;
float test2=255;
float test3=255;
float testF=255;
float testFruit=255;
float testTC=255;
float testM=255;
float testB=255;
float sheet=50;
float testPlate=255;
int row=4;
int col=4;
float flow=0;
float puddle=0;
float fluff;
float sheet1=0;
float sheet2=0;
boolean open;
int glass=10;
float feetD=350;
float feetU=300;
float hover=100;
int hh=350;
int hw=400;
float shake=0;
int shineO=1;
int shineFlicker=255;
float poof;
float shatter=0;
float shatter2=0;
////////////////////////////////////////////////////////////jars_object_array//////////////////////////////////////////////////////////////////////////////
Jar[][] jar=new Jar[row][col];
//class
class Jar {
  int dia;
  float w;
  float h;
  float b;
  boolean fadeout;
  Jar(float tempH, float tempW) {
    dia=50;
    w=tempW;
    h=tempH;
    b=50;
    fadeout=false;
  }
  void display(float w, float h) {
    fill(0, 0, 0, test2);
    rect(400+w+move, 50+h, dia-30, dia);       
    ellipse(410+w+move, 50+h, dia-20, dia-40); 
    ellipse(410+w+move, 125+h, dia-20, dia-40); 
    //base
    ellipse(410+w+move, 100+h, dia, dia);
    fill(200, 200, 200, test2);
    ellipse(410+w+move+15, 100+h, dia-40, dia-30);
  }
  void fade() {
    if (mousePressed&&mouseX>410+w+move-25&&mouseX<410+w+move-25+dia&&mouseY>100+h-25&&mouseY<100+h-25+dia)
    {
      test2--;
    }
  }
}
////////////////////////////////////////////////////////end_jar_class////////////////////////////////
void setup() {
  size(1000, 600);  
  textAlign(CENTER);
  textSize(100);
  pounce=false;
  for (int i=0; i<row; i++) {
    for (int j=0; j<col; j++) {
      jar[i][j]= new Jar(i*100, j*100);
    }
  }
}
void draw() {  
  background(0);
  open=false;
  moving();
  /////////////////////////////////////////////////////////////screen_selection(this code is from Allison Berkoy's exapmle sketch about state changes)//////
  if (scene!=5) {  //if scene does not = 3
    expand=0;  //reset value of expand
  }
  if (scene==1) {
    scene1();
    button(-480, "RE-START(1)", 255);
    button(-250, "KITCHEN(2)", 100);
    button(-20, "LIVINGROOM(3)", 100);
    button(210, "BEDROOM(4)", 100);
  } else if (scene==2) {
    scene2();
    button(-480, "RE-START(1)", 100);
    button(-250, "KITCHEN(2)", 255);
    button(-20, "LIVINGROOM(3)", 100);
    button(210, "BEDROOM(4)", 100);
  } else if (scene==3) {
    scene3();
    button(-480, "RE-START(1)", 100);
    button(-250, "KITCHEN(2)", 100);
    button(-20, "LIVINGROOM(3)", 255);
    button(210, "BEDROOM(4)", 100);
  } else if (scene==4) {
    scene4();
    button(-480, "RE-START(1)", 100);
    button(-250, "KITCHEN(2)", 100);
    button(-20, "LIVINGROOM(3)", 100);
    button(210, "BEDROOM(4)", 255);
  } else if (scene==5) {
    scene5();
    button(-480, "RE-START(1)", 100);
    button(-250, "KITCHEN(2)", 100);
    button(-20, "LIVINGROOM(3)", 100);
    button(210, "BEDROOM(4)", 100);
  }  
  if (score==10) {
    scene=5;
  }
  if (scene!=1||scene!=5) {
    scorePos(200);
  }
  if (test==255||test2==0||test3==0||puddle==450||sheet==190
    ||testPlate==0||testTC==0||testM==1||testB==1||testFruit==0||fluff==49
    ||shatter==99) {
    score=score+1;
  }
  ///////////////////////////////////////////////////////////////////find_position_on_screen//////////////////////////////////////////////////////////////
  println("x = " + mouseX);
  println("y =" + mouseY);
  /////////////////////////////////////////////////////////////reset_game///////////////////////////////////////////////////////////
  if (mousePressed&&mouseX>20&&mouseX<220&& mouseY>550&&mouseY<600) {
    scene=1;    
    score=0;
    fri1=0;
    fri=0;
    fall=0;
    test=0;
    test2=255;
    test3=255;
    testF=255;
    sheet=50;
    testPlate=255;
    flow=0;
    puddle=0;
    fluff=0;
    sheet1=0;
    sheet2=0;
    testTC=255;
    testM=255;
    testB=255;
    testFruit=255;
    open=false;
    shatter=0;
    shatter2=0;
  }
  if (mousePressed&&mouseX>250&&mouseX<450&& mouseY>550&&mouseY<600) {
    scene=2;
  }
  if (mousePressed&&mouseX>480&&mouseX<680&& mouseY>550&&mouseY<600) {
    scene=3;
  }
  if (mousePressed&&mouseX>710&&mouseX<910&& mouseY>550&&mouseY<600) {
    scene=4;
  }
}
//////////////////////////////////////////////////////reset_game///////////////////////////////////////////////////////////
void keyPressed() {
  if (key== '1') {
    scene=1;    
    score=0;
    fri1=0;
    fri=0;
    fall=0;
    test=0;
    test2=255;
    test3=255;
    testF=255;
    sheet=50;
    testPlate=255;
    flow=0;
    puddle=0;
    fluff=0;
    sheet1=0;
    sheet2=0;
    testTC=255;
    testM=255;
    testB=255;
    testFruit=255;
    open=false;
    shatter=0;
    shatter2=0;
  } else if (key== '2') {
    scene=2;
  } else if (key=='3') {
    scene=3;
  } else if (key=='4') {
    scene=4;
  }
}
/////////////////////////////////////////////start_game///////////////////////////////////////////////////////////
void scene1() {
  fill(100);
  rect(0, 0, 1000, 600);
  textSize(200);
  fill(255);
  text("Bad Kitty", width/2, height/2);
  //cat
  fill(0);
  //ears
  triangle(mouseX-100, mouseY-300, mouseX-150, mouseY, mouseX, mouseY);
  triangle(mouseX+100, mouseY-300, mouseX+150, mouseY, mouseX, mouseY);
  //body  
  triangle(mouseX, height, height, height, mouseX, mouseY);
  circle(mouseX, mouseY, 300);
  fill(255);
  circle(mouseX-80, mouseY, 100);
  circle(mouseX+80, mouseY, 100);
  textSize(20);
  fill(255);   
  text("Use A and D to move the room left and right", width/2, height/4+300);  
  text("Click on objects until they are messed-up/disappear to win", width/2, height/4+350);
  textSize(15);
  text("*If objects are not working, try to shift the screen with a or d to reset their position*", 
    width/2, height/4+380);
}
/////////////////////////////////////////////////////kitchen_scene///////////////////////////////////////////////////////////
void scene2() {
  border();
  moving();
  fill(200);
  rect(0+move-250, 400, 1300, height/3);
  window(width/2-200, height/2-250);
  window(width/2-400, height/2-250);
  window(width/2-600, height/2-250);
  //floor
  for (int i=0; i<=65; i++) {
    for (int l=0; l<=65; l++) {
      fill(100);
      ellipse(i*20+move-250, l*10+405, 4, 4);
      ellipse(l*20+move-250, i*50+405, 10, 10);
    }
  }
  trashCan(-10, -10);
  counter(-150);
  frige(190);  
  plate(100, 250);
  plate(200, 250);
  plate(300, 250);
  sink(-130, 270);
  cat();
  if (mousePressed) {
    pounce=true;
  } else {
    pounce=false;
  }
  if (scratch>30) {
    scratch=10;
  }
}  
/////////////////////////////////////////////////////////livingroom_scene3//////////////////////////////////////////////
void scene3() {
  background(0);
  noStroke();  
  border();
  fill(200);
  rect(0+move-250, 400, 1300, height/3);
  window(width/2-200, height/2-250);
  window(width/2-400, height/2-250);
  window(width/2-600, height/2-250);
  //floor
  for (int i=0; i<=64; i++) {
    for (int l=0; l<height/3; l++) {
      fill(100);
      rect(i*20+move-250, l+400+2, 10, 10);
    }
  }
  couch(-70);
  shelf(90);
  //////////////////////////////////////////////////////////////////////////jars/////////////////////
  for (int i=0; i<row; i++) {
    for (int j=0; j<col; j++) {
      jar[i][j].display(i*100+290, j*100);
      jar[i][j].fade();
    }
  }  
  cat();  
  if (mousePressed) {
    pounce=true;
  } else {
    pounce=false;
  }
  if (scratch>30) {
    scratch=10;
  }
  moving();
}
//////////////////////////////////////////////////////////////////////////bedroom_scene4/////////////////////
void scene4() { 
  noStroke();
  background(0);
  border();
  fill(100);
  rect(0+move-250, 400, 1300, height/3);
  window(width/2-200, height/2-250);
  window(width/2-400, height/2-250);
  window(width/2-600, height/2-250);
  //carpet
  for (int i=0; i<=43; i++) {
    for (int l=0; l<=43; l++) {
      fill(255);
      ellipse(i*30+move-250, l*30+405, 12, 6);
      ellipse(l*30+move-250, i*30+405, 6, 12);
    }
  }  
  bed(-450, -50);  
  dresser(20, 10, 0);  
  cat();  
  if (mousePressed) {
    pounce=true;
  } else {
    pounce=false;
  }
  if (scratch>30) {
    scratch=10;
  }
  moving();
}
/////////////////////////////////////////////////////////winning_scene5//////////////////////////////////
void scene5() {  
  background(0);
  fill(0, 0, 0, 100);
  ellipse(width/2, height/4-120, 400, 100);
  textSize(50);
  fill(255);   
  text("You Win Little Kitty", width/2, height/4+200);
}
/////////////////////////////////////////////////////////*GUI*////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////menu////////////////////////////////
void button(int x, String scene, int shader) {
  noStroke();
  fill(250);
  rect(width/2-10+x, height/2+240, 220, 70);
  fill(0);
  rect(width/2+x, height/2+250, 200, 50);
  textSize(20);
  fill(shader);
  text(scene, width/2+100+x, height/2+290);
}
/////////////////////////////////////////////////////////////score////////////////////////////////////////////
void scorePos(int a) {
  fill(0, 0, 0, 100);
  ellipse(width/2+a, height/4-120, 400, 100);
  textSize(50);
  fill(255);   
  text("score: " + score + " /10", width/2+a, height/4-100);
}
////////////////////////////////////////////////////////////move_scene//////////////////////////////////////
void moving() {
  if (keyPressed) {
    if (key== 'a'||key== 'A'||keyCode == LEFT) {
      move+=5;
    } else if (key=='d'||key== 'D'||keyCode == RIGHT) {
      move-=5;
    }
  }
}
/////////////////////////////////////////////////////////////border/////////////////////////////////
void border() {
  fill(255);
  rect(-250+move, 0, 1300, 600);
}

//////////////////////////////////////////////////////////*furnature*//////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////window////////////////////////
void window(int x, int y) {  
  noStroke();
  fill(140);
  rect(x-20+move, y-10, 150, 200);
  fill(255);
  rect(0+x+move, 0+y, 50, 50);
  rect(60+x+move, 0+y, 50, 50);
  rect(0+x+move, 60+y, 50, 50);
  rect(60+x+move, 60+y, 50, 50);
  rect(0+x+move, 120+y, 50, 50);
  rect(60+x+move, 120+y, 50, 50);
}
/////////////////////////////////////////////////////////////counter////////////////////////////////////
void counter(int x) {
  //spill
  fill(0, 0, 0, 50);
  ellipse(width/2+move-530, height/2+200, puddle, puddle/2);
  //spill
  fill(110);  
  rect(width/2-500+x+move, height/2, 500, 200);
  fill(50);
  rect(width/2-510+x+move, height/2, 520, 20, 200);
}
/////////////////////////////////////////////////////////////////milk//////////////////////
//680 820 90 200
void milk(int x, int y) {
  noStroke();
  fill(190, 190, 190, testM);
  rect(width/2+x+move, height/2+y, 50, 100);
  triangle(width/2+50+x+move, height/2+y, width/2+25+x+move, height/2-25+y, width/2+x+move, height/2+y);
  fill(150, 150, 150, testM);
  rect(width/2+5+x+move, height/2+5+y, 40, 90);
  stroke(190, 190, 190, testM);
  strokeWeight(5);
  line(width/2+25+x+move, height/2+y, width/2+25+x+move, height/2-30+y);
  noStroke();
  fill(240, 240, 240, testM);
  rect(width/2+5+x+move, height/2+20+y, 40, 40);
  fill(150, 150, 150, testM);
  triangle(width/2+45+x+move, height/2+y, width/2+25+x+move, height/2-15+y, width/2+5+x+move, height/2+y);
  if (fri<-200) {
    open=true;
  }
  if (open==true&&mousePressed&&
    mouseX>width/2+x+move
    &&mouseX<width/2+x+move+50
    &&mouseY>height/2+y
    &&mouseY<height/2+y+100
    &&scene==2
    ) {
    testM--;
  }
}
//////////////////////////////////////////////////////////////////////////bottle/////////////////////
void bottle(int x, int y) {
  fill(50, 50, 50, testB);
  ellipse(width/2+x+move, height/2+y, 50, 50);
  rect(width/2-25+x+move, height/2+y, 50, 90, 10);
  rect(width/2-10+x+move, height/2-60+y, 20, 50, 10);
  rect(width/2-15+x+move, height/2-60+y, 30, 10, 10);
  fill(200, 200, 200, testB);
  ellipse(width/2+10+x+move, height/2-5+y, 20, 20);
  if (open==true&&mousePressed
    &&mouseX>width/2-25+x+move
    &&mouseX<width/2-25+x+move+50
    &&mouseY>height/2+y
    &&mouseY<height/2+y+90  
    &&scene==2
    )
  {
    testB--;
  }
}
//////////////////////////////////////////////////////////////////////////fruits/////////////////////
void fruit(int x, int y) {
  fill(50, 50, 50, testFruit);
  ellipse(width/2+x+move, height/2+y, 50, 50);
  fill(150, 150, 150, testFruit);
  ellipse(width/2+x+move, height/2-25+y, 10, 20);
  ellipse(width/2+9+x+move, height/2-15+y, 20, 10);
  ellipse(width/2-10+x+move, height/2-5+y, 5, 5);
  ellipse(width/2-5+x+move, height/2-10+y, 5, 5);
  ellipse(width/2-10+x+move, height/2-15+y, 5, 5);
  if (open==true&&mousePressed
    &&mouseX>width/2+x+move
    &&mouseX<width/2+x+move+50
    &&mouseY>height/2+y
    &&mouseY<height/2+y+50
    &&scene==2) {
    testFruit--;
  }
}
//////////////////////////////////////////////////////////////////////////fridge/////////////////////
void frige(int x) {
  //base
  fill(160);
  rect(width/2+50+move+x, height/2-300, 300, 500, 40);
  //inside
  fill(100);
  rect(width/2+60+move+x, height/2-280, 280, 200, 50);
  rect(width/2+60+move+x, height/2-70, 280, 240, 50);
  rect(width/2+60+move+x, height/2-240, 280, 160);
  rect(width/2+60+move+x, height/2-70, 280, 200);
  //shelf
  fill(250);
  rect(width/2+60+move+x, height/2-10, 280, 5);
  milk(390, -180);
  milk(290, -180);
  bottle(350, 80);
  bottle(450, 80);
  fruit(400, -35);
  fruit(350, -35);
  fruit(300, -35);
  fill(200);
  rect(width/2+60+move+x+fri1, height/2-280, 280+fri, 200, 50);
  rect(width/2+60+move+x+fri1, height/2-70, 280+fri, 240, 50);
  rect(width/2+60+move+x+fri1, height/2-240, 280+fri, 160);
  rect(width/2+60+move+x+fri1, height/2-70, 280+fri, 200);  
  //handle
  fill(160);
  rect(width/2+70+move+x+fri1, height/2-30, 20, 50, 100);
  rect(width/2+70+move+x+fri1, height/2-150, 20, 50, 100);
  if (mousePressed
    &&mouseX>width/2+60+move+x+fri1
    &&mouseX<width/2+60+move+x+fri1+280&&scene==2) {
    fri1++;
    fri--;
  }
}
//////////////////////////////////////////////////////////////////////////couch/////////////////////
void couch(int x) {
  rect(width/2-600+x+move, height/2, 400, 200, 100);
  fill(200);
  ellipse(width/2-400+x+move, height/2+155, 400, 100);
  fill(200);
  ellipse(width/2-200+x+move, height/2+100, 100, 100);
  fill(200);
  ellipse(width/2-600+x+move, height/2+100, 100, 100);
  fill(100);
  ellipse(width/2-200+x+move, height/2+100, 20, 20);
  fill(100);
  ellipse(width/2-600+x+move, height/2+100, 20, 20);
  fill(250);
  stuffing(-150, -40);
  stuffing(-180, 0);
  stuffing(-170, 100);
  //180 670 300 500
  if (mousePressed
    &&mouseX>width/2-600+x+move
    &&mouseX<width/2-600+x+move+400
    &&mouseY>height/2
    &&mouseY<height/2+200
    &&scene==3
    ) {
    test3--;
    fluff++;
  }
  if (fluff>=50) {
    fluff=50;
  }
}
/////////////////////////////////////////////////////////////////////stuffing////////////////////////////
void stuffing(int x, int y) {
  circle(width/2+move-200+x, height/2+70+y, fluff/2);
  circle(width/2+move-190+x, height/2+70+y, fluff/2);
  circle(width/2+move-185+x, height/2+60+y, fluff/2);
  circle(width/2+move-300+x, height/2+50+y, fluff/3);
  circle(width/2+move-290+x, height/2+50+y, fluff/3);
  circle(width/2+move-285+x, height/2+60+y, fluff/3);  
  circle(width/2+move-400+x, height/2+70+y, fluff/4);
  circle(width/2+move-390+x, height/2+70+y, fluff/4);
  circle(width/2+move-385+x, height/2+60+y, fluff/4);
}
//////////////////////////////////////////////////////////////////////////shelf/////////////////////
void shelf(int x) {
  fill(160);
  rect(width/2+50+move+x, height/2-400, 400, 600);
  fill(120);
  rect(width/2+65+move+x, height/2-175, 380, 10);
  rect(width/2+65+move+x, height/2-175+100, 380, 10);
  rect(width/2+65+move+x, height/2-175+200, 380, 10);
  rect(width/2+65+move+x, height/2-175+300, 380, 10);
  if (mousePressed
    &&mouseX>width/2+50+move+x
    &&mouseX<width/2+50+move+x+400
    &&mouseY>height/2-400
    &&mouseY<height/2
    &&scene==3
    ) {
    test2--;
  }
}
/////////////////////////////////////////////////////////////////////////////bed/////////////////////
void bed(int x, int y) {
  fill(50);
  ellipse(width/2-200+x+move, height/2+50+y, 100, 300);
  ellipse(width/2+400+x+move, height/2+100+y, 100, 200);  
  //bed
  fill(200);
  rect(width/2-200+x+move, height/2+y, 600, 200, 100);    
  //base
  fill(50);
  rect(width/2-200+x+move, height/2+100+y, 600, 100);  
  //sheet
  fill(150, 150, 150);  
  rect(width/2-100+x+move, height/2+y+sheet1, 500+sheet1, 50+sheet, 100);
  if (mousePressed
    &&mouseX>width/2-100+x+move
    &&mouseX<width/2-100+x+move+500+sheet1
    &&mouseY>height/2+y+sheet1
    &&mouseY<height/2+y+sheet1+50+sheet
    &&scene==4
    ) {
    sheet++;
  }
  if (sheet==200) {
    sheet=200;
    sheet1=sheet;
  }
}
///////////////////////////////////////////////////////////dresser///////////////////////////////////
void dresser(int x, int y, int z) {
  fill(100, 100, 100);
  ellipse(width/2+275+x+move, height/2-200+y+z, 300, 400);
  fill(250, 250, 250);
  ellipse(width/2+275+x+move, height/2-200+y+z, 280, 380);
  fill(175);  
  rect(width/2+125+x+move, height/2-70+y, 300, 200);
  fill(105);  
  rect(width/2+100+x+move, height/2-70+y, 350, 10);
  stroke(0);
  strokeWeight(1);
  line(width/2+275+move+x, height/2-200+y, width/2+275+shatter+move+x, height/2-200+shatter+y);
  line(width/2+275+move+x, height/2-200+y, width/2+275-shatter+move+x, height/2-200+shatter+y);
  line(width/2+275+move+x, height/2-200+y, width/2+275+shatter+move+x, height/2-200-shatter+y);
  line(width/2+275+move+x, height/2-200+y, width/2+275-shatter+move+x, height/2-200-shatter+y);
  line(width/2+275+move+x, height/2-200+y, width/2+275+shatter2*cos(2)+move+x, height/2-200+shatter2+y);
  line(width/2+275+move+x, height/2-200+y, width/2+275-shatter2*cos(2)+move+x, height/2-200+shatter2+y);
  line(width/2+275+move+x, height/2-200+y, width/2+275+shatter2*cos(2)+move+x, height/2-200-shatter2+y);
  line(width/2+275+move+x, height/2-200+y, width/2+275-shatter2*cos(2)+move+x, height/2-200-shatter2+y);
  if (mousePressed
    &&mouseX>width/2+275+x+move/2
    &&mouseX<width/2+275+x+move+300/2
    &&mouseY>height/2-200+y+z/2
    &&mouseY<height/2-200+y+z+400/2
    &&scene==4) {
    shatter++;
    shatter2++;
  }
  if (shatter>=100) {
    shatter=100;
    shatter2=100;
  }
}
///////////////////////////////////////////////////////////////////////plate////////////////////////
void plate(int x, int y) {
  fill(240, 240, 240, testPlate);
  ellipse(x+move, y, 110, 110);
  fill(230, 230, 230, testPlate);
  ellipse(x+move, y, 70, 70);
  //plate 320 620 200 300
  if (mousePressed
    &&mouseX>x+move
    &&mouseX<x+move+110
    &&mouseY>y
    &&mouseY<y+110
    &&scene==2
    ) {
    testPlate--;
  }
}
/////////////////////////////////////////////////////////////////////////////trashcan//////////////////////
//500 630 290 480
void trashCan(int x, int y) {
  fill(220, 220, 220, testTC);
  rect(width/2+shake+x+move, height/2+y, 150, 200, 20);
  fill(100, 100, 100, testTC);
  rect(width/2+15+shake+x+move, height/2+10+y, 120, 50, 50);
  if (mousePressed
    &&mouseX>width/2+shake+x+move
    &&mouseX<width/2+shake+x+move+150
    &&mouseY>height/2+y
    &&mouseY<height/2+y+200
    &&scene==2
    ) {
    shake=shake+random(-2, 2);
    testTC--;
  }
}
//////////////////////////////////////////////////////////////////////////sink/////////////////////
void sink(int x, int y) {
  //fill(0);
  //rect(x+move-20, y-20, 190, 70);
  //neck
  fill(170);
  rect(x+move+10+50, y-20, 20, 50, 10);
  //base
  fill(170);
  rect(x+move, y+20, 150, 10);
  fill(0, 0, 0, 50);
  rect(width/2+move-535, height/2-40, 10, flow);
  //nossel
  fill(170);
  rect(x+move+10+50, y-20, 50, 20, 100);
  //knobs 
  ellipse(x+move+10, y+5, 40, 30);
  ellipse(x+move+140, y+5, 40, 30);
  fill(240);
  ellipse(x+move+10, y, 20, 15);
  ellipse(x+move+140, y, 20, 15);  
  //400 700 200,300
  if (mousePressed&&
    mouseX>x+move-20
    &&mouseX<x+move-20+190
    &&mouseY>y-20
    &&mouseY<y-20+70
    &&scene==2
    ) {
    flow++;
  }
  if (flow>=250)
  {
    flow=250;
    puddle++;
  }
  if (puddle>460) {
    puddle=460;
  }
} 
///////////////////////////////////////////////////////////////////////////////player/////////////////////////////////////////////////////
void cat() {
  if (pounce==false) {
    stroke(0);
    strokeWeight(17);
    fill(0);
    //feet
    line(mouseX, mouseY-70, mouseX, mouseY);
    line(mouseX-20, mouseY-70, mouseX-20, mouseY);
    line(mouseX-100, mouseY-70, mouseX-100, mouseY);
    line(mouseX-120, mouseY-70, mouseX-120, mouseY);
    //tail
    line(mouseX-90, mouseY-70, mouseX-130, mouseY-250);
    head(0, 0);
    //body
    stroke(0);
    strokeWeight(50);
    line(mouseX-90, mouseY-body, mouseX-15, mouseY-body);
    strokeWeight(17);
    fill(0);
    circle(mouseX-90, mouseY-70, 40);
  }  
  if (pounce==true) {
    stroke(0);
    strokeWeight(17);
    fill(0);
    //feet
    line(mouseX-10, mouseY-70, mouseX+scratch++, mouseY);    
    //elbow
    line(mouseX-50, mouseY-30, mouseX-40, mouseY-40);
    line(mouseX-50, mouseY-30, mouseX-30, mouseY);    
    line(mouseX-100, mouseY-70, mouseX-80, mouseY);
    line(mouseX-120, mouseY-70, mouseX-100, mouseY);
    //tail
    line(mouseX-100, mouseY-70, mouseX-130, mouseY-250);
    head(+20, -20);
    //body
    stroke(0);
    strokeWeight(50);
    line(mouseX-90, mouseY-body, mouseX-15, mouseY-60);
    strokeWeight(17);
    fill(0);
    circle(mouseX-90, mouseY-65, 40);
  }
}
void head(int a, int b) {
  //head
  //left ear
  triangle(mouseX-50+b, mouseY-240+a, mouseX-30+b, mouseY-c+a, mouseX+40+b, mouseY-c+a);
  //right ear
  triangle(mouseX+60+b+20, mouseY-240+a, mouseX+50+b+15, mouseY-c+a, mouseX+b, mouseY-c+a);
  circle(mouseX+20+b, mouseY-150+a, 100);
  //eyes
  //lefteye
  strokeWeight(2);
  fill(255);
  circle(mouseX+b, mouseY-150+a, 40);
  //right eye
  circle(mouseX+55+b, mouseY-150+a, 40);
  if (mousePressed) {
    //left eyelid
    fill(0);
    circle(mouseX+b+15, mouseY-160+a, 40);
    //right eyelid
    circle(mouseX+40+b, mouseY-160+a, 40);
  }
}
