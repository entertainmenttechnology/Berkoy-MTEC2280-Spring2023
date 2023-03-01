//Isaias Acosta | Infecting cat | 
//click to cleanse, release to infect with sad cats


float r;
float g;
float b;

PImage sadCat;
PImage ThumbsUpCat;


boolean button = false;
void setup(){
  rectMode(CENTER);
  textAlign(CENTER);
  size(950,950);
  background(190);
  frameRate(15);
  
  sadCat = loadImage("sadCat.png");
  ThumbsUpCat = loadImage("ThumbsUpCat.jpg");
}


void draw(){
  r = random(200,255);
  g = random(200,255);
  b = random(0);
  
  //creates the checkerd pattern
 for(int i=0; i<=width;i+=50){
   strokeWeight(3);
   line(50+i,0,50+i,height);
 }
 for(int i=0; i<=height;i+=50){
   strokeWeight(3);
   line(0,i,height,i);
 }
 
 
 if(mousePressed){
   
   //makes sure that its randomized in intervals of 50
   int a = int(random(0,950)/100)*100;
   int b = int(random(0,950)/50)*50;
   int a2 = int(random(0,950)/100)*100;
   int b2 = int(random(0,950)/50)*50;
   
   //draws the rectangle in the center
   fill(174, 235, 171);
   rect(width/2,height/2,250,250);
   
   //draws the text
   textSize(48);
   fill(0,g,0);
   text("cleansing",width/2,height/2);
   
   //draws the green cats when mouse is pressed
   tint(0,g,0);
   image(ThumbsUpCat,a+50,b,50,50);
   image(ThumbsUpCat,a2,b2,50,50);
   
 }else{
   
   //makes sure that its randomized in intervals of 50
   int a = int(random(0,950)/100)*100;
   int b = int(random(0,950)/50)*50;
   
   int a2 = int(random(0,950)/100)*100;
   int b2 = int(random(0,950)/50)*50;
   
   //draws the rectangle in the center
   fill(235, 171, 171);
   rect(width/2,height/2,250,250);
   
   //draws the text
   textSize(48);
   fill(r,0,0);
   text("infecting",width/2,height/2);
   
   //draws the green cats when mouse is pressed
   tint(r,0,0);
   image(sadCat,a+50,b,50,50);
   image(sadCat,a2,b2,50,50);
   
   
 }   

}
