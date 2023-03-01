/*
Final iteration of the Midterm: "Honoring Mexico's Greatest" by David Calixto
Use the Left & Right D-pad to shift between Master Array & People
Click to shift between Array of People & Pictures 
*/
int [] MasterArray = new int[3];
int MasterArrayIndex = 0;

PImage InitialPic;

PImage [] ChespiritoPic = new PImage[5];
int ChespiritoPicIndex = 0;

PImage [] VicentePic = new PImage[5];
int VicentePicIndex = 0;

PImage [] HugoPic = new PImage[5];
int HugoPicIndex = 0;

PFont font;

String [] Quote = {"Tres de los mejores de mi Mexico Querido <3 \n Three of my beloved Mexico's best <3",
"Vicente 'Chente' Fernández Gómez\n Por siempre ''El Rey De Las Rancheras'\n Forever the ''King of rancheras'''",
"Descansa, Roberto ''Chespirito'' Gómez Bolaños. \n Gracias por todos los años de alegria \nFebruary 21, 1929 - November 28, 2014",
"Hugo Sánchez Márquez \nUno de los maximo goleadores\nde mi Mexico Querido <3\nOne of Mexico's top goal scorers"};
int QuoteIndex = 0;

String [] Title = {"Mexico's Greatest",
"Vicente ''Chente'' Fernández Gómez",
"Roberto ''Chespirito'' Gómez Bolaños", 
"Hugo Sánchez Márquez"};
int TitleIndex = 0;

String TitleArrayInstructions = "Use the Left & Right buttons\nto cycle between slides";
String InbewteenArrayInstructions = "Click to shuffle\nbetween pictures";

import processing.sound.*;
SoundFile file;

void setup(){
  size(1080, 900);
  for (int i = 0; i<ChespiritoPic.length;i++){
    ChespiritoPic[i] = loadImage("ChespiritoPic" +i+ ".jpg");
  }
  for (int i = 0; i<VicentePic.length;i++){
    VicentePic[i] = loadImage("VicentePic" +i+ ".jpg");
  }
  for (int i = 0; i<HugoPic.length;i++){
    HugoPic[i] = loadImage("HugoPic" +i+ ".jpg");
  }
  
  InitialPic = loadImage("InitialPic.jpg");
  
  font = createFont("SourceCodePro-Regular.ttf", 28);
  textFont(font);
  
  file = new SoundFile(this, "Los Tigres Del Norte - Un Consentido De Dios.aiff");
  file.play();
}

void draw(){
  //background(107);
  if(MasterArrayIndex == 3){
    HugoDisplayPage();
  }
  else if(MasterArrayIndex == 2){
    ChespiritoDisplayPage();
  }
  else if(MasterArrayIndex == 1){
    VicenteDisplayPage();
  }
  else{
    TitleDisplayPage();
  }
}


void HugoDisplayPage(){
  background(#5D5453);
  textAlign(CENTER);
  text(Title[TitleIndex],200,0,700,300);
  image(HugoPic[HugoPicIndex],125,35, 861, 528);
  text(Quote[QuoteIndex],200,575,700,300);
  text(InbewteenArrayInstructions,205,800,700,300);
}
void VicenteDisplayPage(){
  background(#5D5453);
  textAlign(CENTER);
  text(Title[TitleIndex],225,0,700,300);
  image(VicentePic[VicentePicIndex],125,35, 861, 528);
  text(Quote[QuoteIndex],200,575,700,300);
  text(InbewteenArrayInstructions,205,800,700,300);
}
void ChespiritoDisplayPage(){
  background(#5D5453);
  textAlign(CENTER);
  text(Title[TitleIndex],200,0,700,300);
  image(ChespiritoPic[ChespiritoPicIndex],125,35, 861, 528);
  text(Quote[QuoteIndex],200,575,700,300);
  text(InbewteenArrayInstructions,205,800,700,300);
}
void TitleDisplayPage(){
  background(#B7807E);
  textAlign(CENTER);
  image(InitialPic,125,35, 861, 528);
  text(Title[TitleIndex],205,0,700,300);
  text(Quote[QuoteIndex],200,575,700,300);
  text(Quote[QuoteIndex],200,575,700,300);
  text(TitleArrayInstructions,205,800,700,300);
}

void mouseClicked(){
//This is Vicente's images
  if(MasterArrayIndex == 1){
    if(VicentePicIndex == VicentePic.length - 1){
        VicentePicIndex = 0;
      }
    else{
        VicentePicIndex++;
      }
    }
    
//This is Chesperito's images
  if(MasterArrayIndex == 2){
    if(ChespiritoPicIndex == ChespiritoPic.length - 1){
        ChespiritoPicIndex = 0;
        
      }
    else{
        ChespiritoPicIndex++;
      }
  }    
//This is Hugo's images
  if(MasterArrayIndex == 3){
    if(HugoPicIndex == HugoPic.length-1){
        HugoPicIndex = 0;
        
      }
    else{
        HugoPicIndex++;
      }
  }
}

void keyPressed() {
  if (key == CODED) {
//Used to Scroll through the images
    if (keyCode == RIGHT) {
      MasterArrayIndex++;
      TitleIndex++;
      QuoteIndex++;
    }
    
    if (keyCode == LEFT) {
      MasterArrayIndex--;
      TitleIndex--;
      QuoteIndex--;
    }
    if(keyCode == UP){
      MasterArrayIndex = 0;
      TitleIndex = 0;
      TitleIndex = 0;
      QuoteIndex = 0;
    }
  }
  
//Used to bounce back the Title once it hits the Max length of the array
//Or if -1 is hit accidentally or intentionally
  if(TitleIndex==Title.length){
    TitleIndex = 0;
  }
  if(TitleIndex== -1){
    TitleIndex = Title.length-1;
  }
  
//Used to bounce back the Master Array once it hits the Max length of the array
//Or if -1 is hit accidentally or intentionally
  if(MasterArrayIndex == 4){
    MasterArrayIndex = 0;
  }
  if(MasterArrayIndex == -1){
    MasterArrayIndex=3;
  }
//Used to bounce back the Quote Array once it hits the Max length of the array
//Or if -1 is hit accidentally or intentionally
  if(QuoteIndex==Quote.length){
    QuoteIndex = 0;
  }
  if(QuoteIndex== -1){
    QuoteIndex = Quote.length-1;
  }
}
