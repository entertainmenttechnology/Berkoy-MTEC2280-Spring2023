//Soccer Game by Terry Chun

/*

Simulates penalty shots by having user aim with mouse
and shoot with left mouse click.
Ball will either show "goal" or "no goal" depending on the ball shot.

//////////////////////////////////////////////////////////

version 2.1
version notes: implemented graphic rework by rearranging title screen code structure, 
                now allows for title animation.
                
Gameplay Changes
-added option to exit to title menu

-goal is now wider and taller, and ball is now smaller

Graphic Changes
-title menu art reworked and animated

-game screen background art reworked
                
Additional Changes
-fixed bug: power bar speed not resetting initially after shooting

//////////////////////////////////////////////////////////

version 2.0
Gameplay Changes
-now the user must click and hold the ball to shoot

-added a power bar that goes up and down and determines the new ball position Y

-added a crosshair that changes depending on the position of mouse X and determines the new ball position X

Graphic Changes
-added striped background in title screen

-added grass effect

*/


String gameVersion = "2.1.0";          //update current game version

boolean startmenuOnOff = true;
boolean gameOnOff = false;

int titlestate = 0;
int titlestateChange = 1;

PImage soccerb1;
PImage soccerb2;
PImage soccerb3;
PImage titlescreen;
PImage gamescreen;
PImage titlebutton;
PImage titlebuttonGlow;

float ballposX = 0;
float ballposY = 0;

int goaltextX = 540;
int goaltextY = 380;
int goaltextSize = 75;

float powerbarHeight = 0;
float targetX = 0;
float powerbarSpeed = 1.4;
float powerbarAccel = .13;


void setup(){
  
 size(1080, 720);
 background(255);
 rectMode(CENTER);
 
 imageMode(CENTER);
 soccerb1 = loadImage("soccer ball 1.png");
 soccerb2 = loadImage("soccer ball 2.png");
 soccerb3 = loadImage("soccer ball 3.png");
 titlescreen = loadImage("title screen.png");
 gamescreen = loadImage("game screen.jpg");
 titlebutton = loadImage("return to title button.png");
 titlebuttonGlow = loadImage("return to title glow.png");
 
}


void draw(){
  
////title menu
  if(startmenuOnOff && gameOnOff == false){
    
       
   titlestate += titlestateChange;
   if(titlestate < 0 || titlestate > 60){
     titlestateChange *= -1;
   }
    
   //blinking press enter
   if(titlestate < 30){
     image(titlescreen, width/2, height/2);
     textSize(40);
     text("Press ENTER to play", 540, 600);
   } else{
     image(titlescreen, width/2, height/2);
   }
   
   //rotating soccer ball
   if(titlestate < 15){
     image(soccerb1, width/2, height/2, 300, 300);
   } else if(titlestate < 45){
     image(soccerb2, width/2, height/2, 300, 300);
   } else{
     image(soccerb3, width/2, height/2, 300, 300);
   } 
   
   fill(255);
   textAlign(CENTER);
   textSize(14);
   text("v" + gameVersion, 1020, 680);
    
   if(keyPressed && gameOnOff == false){
     if(key == 10){
      gameOnOff = true;
      startmenuOnOff = false;
      clear();
     }
   }

  }
  
  
////game screen before shoot  
  if(gameOnOff){
    
    background(255);
    imageMode(CENTER);

    image(gamescreen, width/2, height/2);

    //instruction text
    fill(0, 150);
    rectMode(CENTER);
    noStroke();
    rect(540, 40, 900, 40);
    textSize(30);
    fill(255);
    textAlign(CENTER);
    text("Click on the ball and hold down the mouse to aim and shoot", 540, 50);
    
    noStroke();                    //ball shadow
    fill(50);
    ellipse(570, 660, 90, 20);

    //ball shoot hover color
    if(mouseX > 470 && mouseX < 610 && mouseY < 670 && mouseY > 530){
      fill(242, 240, 125, 180);      
      ellipse(540, 600, 150, 150);
    }
    
    image(soccerb1, 540, 600, 140, 140);                //soccer ball
      
      
    //ball shoot animation
    if(mousePressed){
      if(mouseX > 470 && mouseX < 610 && mouseY < 670 && mouseY > 530){        
        fill(255, 120, 49);
        noStroke();
        ellipse(540, 600, 150, 150);
        
        image(soccerb1, 540, 600, 140, 140);
        
        rectMode(CORNER);
        
        noFill();
        stroke(190);
        rect(650, 650, 20, -100);        
        if(powerbarHeight < -80){                    //power bar color changes when above 80%
          fill(255, 0, 0);
        } else{
          fill(245, 151, 0);
        }
        rect(650, 650, 20, powerbarHeight); 
        powerbarHeight -= powerbarSpeed;
        powerbarSpeed += powerbarAccel;
        if(powerbarHeight < -100 || powerbarHeight > 0){
          powerbarSpeed *= -1;
        }
        if(powerbarHeight > 0){
          powerbarSpeed = 1.4;
        }
        
        
        textSize(20);
        text("POWER", 660, 670);
        
        targetX = 540 + ((mouseX - 540) * 3);
        fill(255, 0, 0);
        noStroke();
        triangle(540 + ((mouseX - 540)*1.8), 450 + (abs(mouseX - 540)*0.3), 
                 535 + ((mouseX - 540)*1.4), 480 + ((mouseX - 540)*-0.1),
                 545 + ((mouseX - 540)*1.4), 480 + ((mouseX - 540)*0.1));
      }           
    }
    
    //return to title
    if(mouseX > 30 && mouseX < 130 && mouseY > 590 && mouseY < 690){
      image(titlebuttonGlow, 80, 640);
    }
    
    image(titlebutton, 80, 640);
    
    if(mousePressed){
      if(mouseX > 30 && mouseX < 130 && mouseY > 590 && mouseY < 690){
        startmenuOnOff = true;
        gameOnOff = false;
      }
    }
    
  }
}

////game screen after shoot
void mouseReleased(){
  if(gameOnOff){
    if(mouseX > 470 && mouseX < 610 && mouseY < 670 && mouseY > 530){
    background(255);
    rectMode(CENTER);
    
    image(gamescreen, width/2, height/2);
    
    //new ball position
    ballposX = 540 + ((targetX - 540) * 1.68 * (1 + (powerbarHeight * -0.005)));
    if(powerbarHeight > -80){                              //different height factor when power bar below 80
      ballposY = 270 + (powerbarHeight * 1.85);
    } else{
      ballposY = 122 + ((powerbarHeight + 80) * 4.5);
    }
    image(soccerb3, ballposX, ballposY, 30, 30);
    
    gameOnOff = false;                                     //reset variables   
    powerbarHeight = 0;
    powerbarSpeed = 1.4;
    
    textSize(goaltextSize);
    fill(255);
    textAlign(CENTER);
    if(ballposX > 295 && ballposX < 785 && ballposY > 86){        
      if(ballposX > 781 && ballposY < 91){
        text("NO GOAL!", goaltextX, goaltextY);
      } else if(ballposX < 299 && ballposY < 91){
        text("NO GOAL!", goaltextX, goaltextY);
      } else{
        text("GOOOAL!", goaltextX, goaltextY);
      }
    } else{
        text("NO GOAL!", goaltextX, goaltextY);
    }
    
    
    textSize(30);
    text("Press ENTER to retry", goaltextX, goaltextY + 100);
    text("Press SPACEBAR to return to title", goaltextX, goaltextY + 140);
      
  }
  }
}

void keyPressed(){
  if(gameOnOff == false && startmenuOnOff == false){
    if(key == 10){
      gameOnOff = true;
      background(255);
    }if(key == 32){
      startmenuOnOff = true;
      background(255);
  }
  }
}
