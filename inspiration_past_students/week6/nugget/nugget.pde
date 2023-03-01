//Keith Camacho, He Watches
//press o/p to increase/decrease size of eyeball
//press o/p to increase/decrease nugget violence
//press spacebar to initiate resonance cascade
PImage imgSeq1;
PImage imgSeq2;
PImage imgSeq3;
PImage imgSeq4;
PImage imgSeq5;
PImage imgSeq6;
PImage nugget;
int index = 1;

float variance;

int size = 310;
int add = 1;
int min = 60;
int max = 380;
int distanceLattice = 10;
int latticeWeight = 1;
int beginDie = 0;




void setup() {
  size(1080, 720);
  background(0);
  noStroke();
 imgSeq1 = loadImage("10001.png");
 imgSeq2 = loadImage("10002.png");
 imgSeq3 = loadImage("10003.png");
 imgSeq4 = loadImage("10004.png");
 imgSeq5 = loadImage("10005.png");
 imgSeq6 = loadImage("10006.png");
 nugget = loadImage("nugget.jpg");
 imageMode(CENTER); 
  
  
}

void draw() {
  clear();
  //setup lattice to begin if switch enabled
      if(beginDie == 1){lattice();}
      
   //---------
      circleInsane(width/2,height/2);
      increaseCircle();
      
      
   //---------
     
    //mouth   
        fill(255);
        ellipse(540, 200, 100, 100);
        fill(0);
        ellipse(540, 200, 50, 50);
   
   //---------
      strokeWeight(0);  
   //---------
   
      //eyes  
      fill(250, 250, 250);
       ellipse(880, 200, 400, 400);
       ellipse(200, 200, 400, 400);
      fill(0);
      ellipse(200, 200, size, size);
      ellipse(880, 200, size, size);
    
    
      //ground
      fill(139, 69, 19);
      rect(0, 650, 1080, 100);
      fill(124, 252, 0);
      rect(0, 600, 1080, 50);
    
     
 nugget();
  
}


//--------------------
//--------------------



void keyPressed() {
  if (keyCode == 80) {
    size = size + 20;
    variance = variance + 50;
    if (size > max){size=max;}
  }
  if (keyCode == 79) {
    size = size - 20;
    variance = variance - 50;
    if (size < min){size=min;};   
  }
  
// add ability to resonance cascade
   if (keyCode == 32){
     if(beginDie == 0){
       beginDie = 1;
     } else{
       beginDie = 0;
       clear();
     }
  }
}

//--------------------
//--------------------

void increaseCircle(){
      if (size > max)
      {
        add = -1;
      }
      if (size < min)
      {
        add = 1;
      }
      size = size + add;
  }
  
//--------------------
//--------------------
 

void lattice(){
  
  for (int i=0; i < width; i+=distanceLattice){    
    stroke(random(20)+100,0,0);
    strokeWeight(2+random(10));
    line(i+random(20),0,i+random(20),height);
    }
  for (int i=0; i < height; i+=distanceLattice){
     stroke(random(20)+100,0,0);
     strokeWeight(2+random(10));
     line(0,i+random(20),width,i+random(20));
  } 
}//

void circleInsane(int a, int b){ 
if(index > 6){index=1;}
if(index == 1){image(imgSeq1,a,b);} 
if(index == 2){image(imgSeq2,a,b);}
if(index == 3){image(imgSeq3,a,b);} 
if(index == 4){image(imgSeq4,a,b);} 
if(index == 5){image(imgSeq5,a,b);} 
if(index == 6){image(imgSeq6,a,b);} 
  delay(0);
  index++;
   }
   
void nugget(){
  float c;
  float d;
  c = random(variance)+(width/2)-(variance/2);
  d = random(variance)+(height/2)-(variance/2);
  image(nugget,c,d);
  textSize(32);
  textAlign(CENTER);
  text("nugget",c,d+200);

  }
