//Maze

//by Hui

int page = 1;
float x;
float y;
float[]a=new float[10];
float b;
float myWidth;
float myHeight;
float xSpeed;
float ySpeed;
PImage maze;
PImage crab;
PImage crab2;
PImage crab3;
PImage text;
PImage button;
PImage text1;
PImage chatting;
PImage playgame;
PImage noicant;
PImage joke;
PImage yes;
PImage no;
PImage jokeall;
PImage funny;
PImage notfunny;
PImage mazegame;
PImage start;
PImage chance;
PImage back;
PImage joketext;
PImage gameP6;
PImage gameP8;
PImage great;
int c= 140;
int d= 30;
int e=1;


void setup(){
  size(700,500);
  smooth();
  background(255);
  frameRate(12);
   
     for (int i=0; i< a.length; i++){
       a[i] =random(10,10);
        x = random(width);
        y = random(height);
        xSpeed = random(2, 10);
        ySpeed = random(2, 10);
        myWidth= random(50, 50);
     
   crab = loadImage("crab.png");
      crab2 = loadImage("crab2.png");
      crab3 = loadImage("crab3.png");
   text = loadImage("text.png");
   maze = loadImage("maze.png");
   button = loadImage("button1.png");
   text1 = loadImage("text1.png");
   chatting = loadImage("textchatting.png");
   playgame = loadImage("textplaygame.png");
   noicant = loadImage("noicant.png");
   joke = loadImage("joke.png");
   yes = loadImage("yes.png");
   no = loadImage("no.png");
      mazegame = loadImage("mazegame.png");
   start = loadImage("start.png");
   chance = loadImage("chance.png");
   back = loadImage("back.png");
       joketext = loadImage("joketext.png");
   jokeall = loadImage("jokeall.png");
   funny = loadImage("funny.png");
   notfunny = loadImage("notfunny.png");
      gameP6 = loadImage("gameP6.png");
      gameP8 = loadImage("gameP8.png");
      great = loadImage("great.png");

   
   
   
     }
  }

void draw(){
     background(255);
     for(int i=0; i< a.length; i++){
       if(x > width || x < 0){
    xSpeed = xSpeed*-1;
  }
  if (y > height || y < 0) {
      ySpeed = ySpeed*-1;
    }
  x+=xSpeed;
  y+=ySpeed;
  
    if ( dist (x, y, mouseX, mouseY) <= myWidth/2) {
      ySpeed = ySpeed*-1;        
      xSpeed = xSpeed*-1;
   
    }
       a[i] =random(5, 5);
        x = random(width);
        y = random(height);
     xSpeed = random(2, 10);
     ySpeed = random(2, 10);
         noStroke();
  fill(64,124,255,50);
       ellipse(x, y, myWidth, myWidth);
     }

 
 
 
 
  //page1
  if (page == 1) {
   
    
    if(e==1){
      image(crab, 246, 160,160,175); 
      e++;
    }else if(e==2){
      image(crab2, 246, 160,160,175);
      e++;
    }else if (e==3){
     image(crab3, 246, 160,160,175);
      e=1;
    }
    
  //image(crab, 246, 160,160,175);
  //image(crab2, 246, 160,160,175);
  //image(crab3, 246, 160,160,175);
  image(text, 390, -20,320,305);
  image(button, 110, 400);
  image(button, 310, 400);
  image(button, 500, 400);
  image(text1, 450, 60);
  image(chatting, 75, 440);
  image(playgame, 275, 440);
  image(noicant, 455, 440);
  
  }
  //page2
  if (page == 2) {
    if(e==1){
      image(crab, 246, 160,160,175); 
      e++;
    }else if(e==2){
      image(crab2, 246, 160,160,175);
      e++;
    }else if (e==3){
     image(crab3, 246, 160,160,175);
      e=1;
    }
   //image(crab, 246, 160,160,175);
   image(text, 390, -20,320,305);
   image(button, 110, 400);
   image(button, 500, 400);
   image(joke, 450, 60);
   image(yes, 105, 440);
   image(no, 500, 440);
    
  }

  //page3
   if (page == 3) {
       if(e==1){
      image(crab, 246, 160,160,175); 
      e++;
    }else if(e==2){
      image(crab2, 246, 160,160,175);
      e++;
    }else if (e==3){
     image(crab3, 246, 160,160,175);
      e=1;
    }
   //image(crab, 246, 160,160,175);
   image(text, 390, -20,320,305);
   image(button, 310, 400);
   image(mazegame, 416, 120,280,35);
   image(start, 302, 440);
   }
   //page4
    if (page == 4) {
       if(e==1){
      image(crab, 246, 160,160,175); 
      e++;
    }else if(e==2){
      image(crab2, 246, 160,160,175);
      e++;
    }else if (e==3){
     image(crab3, 246, 160,160,175);
      e=1;
    }
  //image(crab, 246, 160,160,175);
  image(text, 390, -20,320,305);
  image(button, 110, 400);
  image(button, 310, 400);
  image(button, 500, 400);
  image(chance, 420, 80);
  image(chatting, 75, 440);
  image(back, 275, 440);
  image(playgame, 455, 440);   
  }
   // page5
    if (page == 5) {
   
      image(crab, 446, 190,160,175);
      image(joketext, -30, -40);   
      image(joketext, -30, -40);   
      image(jokeall, 100, 110);   
      image(button, 110, 400);
      image(button, 500, 400);
      image(funny, 45, 440);
      image(notfunny, 390, 440); 
    }
    //page6
    if (page == 6) {
     if(e==1){
      image(crab, 246, 160,160,175); 
      e++;
    }else if(e==2){
      image(crab2, 246, 160,160,175);
      e++;
    }else if (e==3){
     image(crab3, 246, 160,160,175);
      e=1;
    }
      //image(crab, 246, 160,160,175);
    image(text, 390, -20,320,305);
    image(button, 110, 400);
    image(button, 500, 400);
    image(back, 75, 440);
    image(playgame, 455, 440);   
    image(gameP6, 430, 90);
    }
     //page7
    if (page == 7) {
     image(maze, 0, 0);
      checkPoint(c + 10, d + 10); // Offset to move toward the center
     image(crab, c, d,17,20);
    
    }
    
    // page8
    if (page == 8) {
       if(e==1){
      image(crab, 246, 160,160,175); 
      e++;
    }else if(e==2){
      image(crab2, 246, 160,160,175);
      e++;
    }else if (e==3){
     image(crab3, 246, 160,160,175);
      e=1;
    }
  //image(crab, 246, 160,160,175);
  image(text, 390, -20,320,305);
  image(button, 110, 400);
  image(button, 500, 400);
  image(gameP8, 440, 80);
   image(yes, 105, 440);
   image(no, 500, 440);
    }
      // page9
    if (page == 9) {
       if(e==1){
      image(crab, 246, 160,160,175); 
      e++;
    }else if(e==2){
      image(crab2, 246, 160,160,175);
      e++;
    }else if (e==3){
     image(crab3, 246, 160,160,175);
      e=1;
    }
  //image(crab, 246, 160,160,175);
  image(text, 390, -20,320,305);
  image(button, 110, 400);
  image(button, 500, 400);
  image(great, 520, 100);
  image(back, 75, 440);
  image(chatting, 470, 440);

    }
    
    if( page ==7){
   if(c > 485 && c < 550&& d < 130 && d > 85){
     page = 9;   
      c= 140;
       d= 30;
   }
   }

}
 void mousePressed(){
   if( page ==1){
   if(mouseX > 110 && mouseX < 250&& mouseY < 445 && mouseY > 400){
     page = 2;    
   }else if(mouseX > 310 && mouseX < 350 && mouseY < 445 && mouseY > 400){
    page = 3; 
   }else if(mouseX > 500 && mouseX < 540 && mouseY < 445 && mouseY > 400){
    page = 4;
   }
   }
   else if( page ==2){
   if(mouseX > 110 && mouseX < 250&& mouseY < 445 && mouseY > 400){
     page = 5;    
   }else if(mouseX > 500 && mouseX < 540 && mouseY < 445 && mouseY > 400){
    page = 6;
   }
   }
    else if( page ==3){
   if(mouseX > 310 && mouseX < 350 && mouseY < 445 && mouseY > 400){
     page = 7;    
   }
   }
   else if( page ==4){
   if(mouseX > 110 && mouseX < 250&& mouseY < 445 && mouseY > 400){
     page = 2;    
   }else if(mouseX > 310 && mouseX < 350 && mouseY < 445 && mouseY > 400){
    page = 1; 
   }else if(mouseX > 500 && mouseX < 540 && mouseY < 445 && mouseY > 400){
    page = 3;
   }
   }
   else if( page ==5){
   if(mouseX > 110 && mouseX < 250&& mouseY < 445 && mouseY > 400){
     page = 8;    
   }else if(mouseX > 500 && mouseX < 540 && mouseY < 445 && mouseY > 400){
    page = 4;
   }
   }
   else if( page ==6){
   if(mouseX > 110 && mouseX < 250&& mouseY < 445 && mouseY > 400){
     page = 2;    
   }else if(mouseX > 500 && mouseX < 540 && mouseY < 445 && mouseY > 400){
    page = 3;
   }
   }
   
   
   else if( page ==8){
   if(mouseX > 110 && mouseX < 250&& mouseY < 445 && mouseY > 400){
     page = 3;    
   }else if(mouseX > 500 && mouseX < 540 && mouseY < 445 && mouseY > 400){
    page = 1;
   }
   }
   else if( page ==9){
   if(mouseX > 110 && mouseX < 250&& mouseY < 445 && mouseY > 400){
     page = 1;    
   }else if(mouseX > 500 && mouseX < 540 && mouseY < 445 && mouseY > 400){
    page = 2;
   }
   }
 }
 void checkPoint(int cx, int cy) {

  if (overButton(325,395,5, 45)) {  // UP
    if (red(get(cx, cy-1)) == 255) {
      d=d-3;
    }
  }
  else if (overButton(325,  395,165, 205)) {  // DOWN
    if (red(get(cx, cy+1)) == 255) {
      d=d+3;
    }
  }
  else if (overButton(260,  297,70, 140)) {  // LEFT
    if (red(get(cx-1, cy)) == 255) {
      c=c-3;
    }
  }
  else if (overButton(422, 460, 70, 140)) {  // RIGHT
    if (red(get(cx+1, cy)) == 255) {
      c=c+3;
    }
  }
}
boolean overButton(int x1, int x2, int y1, int y2) {
  if ((mouseX > x1) && (mouseX < x2) && (mouseY > y1) && (mouseY < y2)){
    return true;
  }
  else {
    return false;
  }
}
 
 
 
 
 
 
 
 
   
