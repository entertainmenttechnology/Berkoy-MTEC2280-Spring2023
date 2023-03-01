// Giancarlo Macias                  DodgeBall                       dont die


//------------------------------------------------Imports----------------------------------------------------------------------------------
import processing.video.*; 
import processing.sound.*;
Movie intro;
Movie end;
SoundFile song1;
SoundFile song2;
SoundFile song3;

//-----------------------------------------------Global Variables--------------------------------------------------------------------------------------------
boolean GameOn= false;
boolean MainMenu=true;
boolean GameOver=false;
//-------------------------Just 4 credit-------------
String[] arr = { "Hi", "Hola", "Bonjour" };
String greeting=arr[int(random(0,3))];





//-------------------------Ball 1 Variables-------------
float movingX;
float movingY;
int directionX;
int directionY;
int Rcolor1Ball1;
int Gcolor1Ball1;
int Bcolor1Ball1;
int ballSize1;
int ballSize2;
int ballSize3;
//-------------------------Ball 2 Variables-------------
float movingX2;
float movingY2;
int directionX2;
int directionY2;
int Rcolor1Ball2;
int Gcolor1Ball2;
int Bcolor1Ball2;
//-------------------------Ball 3 Variables-------------
float movingX3;
float movingY3;
int directionX3;
int directionY3;
int Rcolor1Ball3;
int Gcolor1Ball3;
int Bcolor1Ball3;
//-----------------------------Score/Time--------------------------
int currentTime;
int gameStartTime;
int savedTime;
int score;
int Fscore;
//-------------------------Colors----------------------------------
int backR1;
int backG1;
int backB1;

//--------------------------------------------------------Void Setup-----------------------------------------------------------------------------------
void setup(){
size(1900,1000);
imageMode(CENTER);
textAlign(CENTER);
intro = new Movie(this, "MainBack.mov");  
end = new Movie(this, "end.mov");  
song1 = new SoundFile(this, "Kaard.mp3");
song2 = new SoundFile(this, "jevil.mp3");
song3 = new SoundFile(this, "endsong.mp3");


}

void movieEvent(Movie intro) {  
  intro.read();
}
void movieEvent2(Movie end){
  end.read();
}
//-------------------------------------------------------------------------Void Draw------------------------------------------------------------------
void draw (){
  
  currentTime=millis();
  score=millis()-gameStartTime;
  
     if (MainMenu==true){
       
      MainMenu();
    }
    
    if (GameOn==true){
       
      GameOn();
    }
    
    if (GameOver==true){
       
      GameOver();
    }
}

//-----------------------------------------------------------------Main Menu--------------------------------------------------------------------------
void MainMenu(){
//background(200,20,200);

end.stop();
intro.loop();
image(intro, width/2, height/2,width,height);
textSize(20);
text(greeting,40,20);
textSize(60);
fill(255,255,0);
text("DodgeBall", width/2, 60); 
text("By Giancarlo Macias", width/2, 130); 
text("Click to Start", width/2, height-100); 
text("Current High Score: 39,473", width/2, 400); 
song2.stop();
song3.stop();
if(!song1.isPlaying()){ 
        song1.play();
}
if (mousePressed==true) {
    
//--------------------------Variable setup for GameOn--------- 
  movingX =10;
  movingY =400;
  directionX =20;
  directionY =20;
  ballSize1=80;
  
  movingX2 =5;
  movingY2 =height;
  directionX2 =30;
  directionY2 =30;
  ballSize2=80;
  
  movingX3 =10;
  movingY3=10;
  directionX3 =10;
  directionY3 =10;
  ballSize3=300;
  
  gameStartTime=currentTime;
  
  Rcolor1Ball1=255;
  Gcolor1Ball1=0;
  Bcolor1Ball1=0;
  
  Rcolor1Ball2=255;
  Gcolor1Ball2=0;
  Bcolor1Ball2=0;
  
  Rcolor1Ball3=255;
  Gcolor1Ball3=0;
  Bcolor1Ball3=0;
  
  backR1=100;
  backG1=100;
  backB1=100;
  
//------------------------------------------------------------
      MainMenu=false;
      GameOver=false;
      GameOn = true;
    }
    }



//----------------------------------------------------------------Game On---------------------------------------------------------------------------
void GameOn(){
  
  
background(backR1,backG1,backB1);
fill(0,200,255);
text("Score: "+score,250,50);

 song1.stop();
  song3.stop();
if(!song2.isPlaying()){ 
        song2.play();}




println("game start time:  "+gameStartTime);
println("current time:  "+currentTime);



//------------------------------You, the player-----------------------
  fill(0,255,20);
  strokeWeight(3);
  circle(mouseX, mouseY,75);     
//------------------------------Enemy Ball 1--------------------------  
 if (currentTime > (gameStartTime+1000)){
  fill(Rcolor1Ball1,Gcolor1Ball1,Bcolor1Ball1);                    
  circle(movingX,movingY,ballSize1);      
  movingX=movingX+directionX;
  movingY=movingY+directionY;
  if(movingX>width || movingX<0)
  {directionX=directionX*-1;}
if(movingY>height || movingY<0)
  {directionY=directionY*-1;}
  
  if (currentTime > (gameStartTime+1500)){
  if(dist(mouseX,mouseY,movingX,movingY)<(ballSize1/2)-10){
    Fscore=score;
    MainMenu=false; 
    GameOn = false;
    GameOver=true;    }}
  

//------------------------------Enemy Ball 2---------------------------  
  
  if (currentTime > (gameStartTime+5000)){
    fill(Rcolor1Ball2,Gcolor1Ball2,Bcolor1Ball2);
    circle(movingX2,movingY2,ballSize2);
    movingX2=movingX2+directionX2;
    movingY2=movingY2+directionY2; 
    if(movingX2>width || movingX2<0)
  {directionX2=directionX2*-1;}
if(movingY2>height || movingY2<0)
  {directionY2=directionY2*-1;}
  }
  
  if (currentTime > (gameStartTime+5500)){
  if(dist(mouseX,mouseY,movingX2,movingY2)<(ballSize2/2)-10){
    Fscore=score;
    MainMenu=false; 
    GameOn = false;
    GameOver=true;    }
  
  //------------------------------Enemy Ball 3---------------------------  
  
  if (currentTime > (gameStartTime+10000)){
    fill(Rcolor1Ball3,Gcolor1Ball3,Bcolor1Ball3);
    circle(movingX3,movingY3,ballSize3);
    movingX3=movingX3+directionX3;
    movingY3=movingY3+directionY3; 
    if(movingX3>width || movingX3<0)
  {directionX3=directionX3*-1;}
if(movingY3>height || movingY3<0)
  {directionY3=directionY3*-1;}
  }
  
  if (currentTime > (gameStartTime+10500)){
  if(dist(mouseX,mouseY,movingX3,movingY3)<(ballSize3/2)-10){
    Fscore=score;
    MainMenu=false; 
    GameOn = false;
    GameOver=true;    }
  
  }}}
if (currentTime > (gameStartTime+20300)){
  Rcolor1Ball1=55;
  Gcolor1Ball1=220;
  Bcolor1Ball1=880;  
  Rcolor1Ball2=55;
  Gcolor1Ball2=220;
  Bcolor1Ball2=880;
  Rcolor1Ball3=55;
  Gcolor1Ball3=220;
  Bcolor1Ball3=880;
  ballSize1=200;
  ballSize2=200;
  ballSize1=400;
  backR1=210;
  backG1=0;
  backB1=250;
  
}



}







//-----------------------------------------------------------------Game Over--------------------------------------------------------------------------
void GameOver(){
  
  end.loop();
  image(end, width/2, height/2,width,height);
  fill(255,255,0);
  text("Press 'SPACE' to restart", width/2, height-100);
  
  textSize(60);
  text("Score "+Fscore, width/2, height-300);
  song1.stop();
  song2.stop();
      if(!song3.isPlaying()){ 
        song3.play();
        } 
  if (keyPressed==true) {
  if ( key == ' ' ) {
      greeting=arr[int(random(0,3))];
      GameOver=false;
      GameOn=false;
      MainMenu = true;
      
    
    }
    }}
