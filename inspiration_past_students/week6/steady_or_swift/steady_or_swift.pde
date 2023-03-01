//Title: Steady or Swift
//Press the mouse to make the fish swim faster!


//Naming outside images
PShape orange1;
PShape orange2;
PShape orange3;
PShape blue1;
PShape blue2;
PShape blue3;
PShape pink1;
PShape pink2;
PShape pink3;
PFont font;

PImage watertank;

//Naming processing variables
float angle = 0.0;
float offset = 400;
float scalar = 35;
float speed = 0.06;
int radius = 40;
int move = 0;

//Let's begin!
void setup() {
  size(800,800);
  watertank = loadImage ("waterbg.png");
  orange1 = loadShape("orangehead.svg");
  orange2 = loadShape ("orangemid.svg");
  orange3 = loadShape ("orangetail.svg");
  blue1 = loadShape ("bluehead.svg");
  blue2 = loadShape ("bluemid.svg");
  blue3 = loadShape ("bluetail.svg");
  pink1 = loadShape ("pinkhead.svg");
  pink2 = loadShape ("pinkmid.svg");
  pink3 = loadShape ("pinktail.svg");
  font = createFont ("backlash.ttf", 60);
  textFont(font);
  textSize (60);
  
  shapeMode(CENTER);
  
}

void draw () {
  //Set the background image!
    background(watertank);
    text("STEADY",320,650);  
    cursor(HAND);
    
  //Create animation
  float y1 = offset + sin(angle) * scalar;
  float y2 = offset + sin(angle + 0.4) * scalar;
  float y3 = offset + sin(angle + 0.8) * scalar;
   
   angle += speed;
   
  //Import the orange fish
    shape(orange1, 498+move,y1, 250,300);
    shape(orange2, 380+move,y2, 250,300);
    shape(orange3, 275+move,y3, 250,300);
    
      
//import the blue fish
    shape(pink1, 300+move,(y1/2), 83,100);
    shape(pink2, 262+move,(y2/2), 70,83);
    shape(pink3, 230+move,(y3/2), 83,100);

    shape(blue1, 486+move,y1/3, 63,80);
    shape(blue2, 462+move,y2/3, 50,63);
    shape(blue3, 438+move,y3/3, 63,80);
    move = move+2;
    if (move>600||move<-600) {
      move=-600;
    }
   
   shape(blue1, 430-move, (y1/3)+150, -83,100);
   shape(blue2, 462-move, (y2/3)+150, -70,-83);
   shape(blue3, 495-move, (y3/3)+150, -83,-100);
   
   shape(pink1, 216-move,(y1/2)-150, -103,120);
   shape(pink2, 262-move,(y2/2)-150, -90,-103);
   shape(pink3, 303-move,(y3/2)-150, -103,-120);

    if (mousePressed == true) {
 //Set the background image!
    background(watertank); 
    text("SWIFT",330,650);
    
  //Create animation 
  //Import the orange fish
    shape(orange1, 498+move,y1, 250,300);
    shape(orange2, 380+move,y2, 250,300);
    shape(orange3, 275+move,y3, 250,300);
    
    //bg fish
    shape(pink1, 300+move,(y1/2), 83,100);
    shape(pink2, 262+move,(y2/2), 70,83);
    shape(pink3, 230+move,(y3/2), 83,100);

    shape(blue1, 486+move,y1/3, 63,80);
    shape(blue2, 462+move,y2/3, 50,63);
    shape(blue3, 438+move,y3/3, 63,80);
    
    angle += speed;  
    y1= y1+5;
    move = move+2;
    
    if (move>600) {
      move=-600;
    }
    
   shape(blue1, 430-move, (y1/3)+150, -83,100);
   shape(blue2, 462-move, (y2/3)+150, -70,-83);
   shape(blue3, 495-move, (y3/3)+150, -83,-100);
   
   shape(pink1, 216-move,(y1/2)-150, -103,120);
   shape(pink2, 262-move,(y2/2)-150, -90,-103);
   shape(pink3, 303-move,(y3/2)-150, -103,-120);
    
   
}  
    
}
 