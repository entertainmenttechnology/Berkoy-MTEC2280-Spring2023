//Soccer Game by Terry Chun

/*
Simulates penalty shots by having user aim with mouse
and shoot with left mouse click.
Ball will either show "goal" or "no goal" depending on the ball shot.

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

boolean gameOnOff = false;
float ballposX = 0;
float ballposY = 0;
int goaltextX = 540;
int goaltextY = 380;
int goaltextSize = 75;
int pressenterSize = 40;
float powerbarHeight = 0;
float targetX = 0;
float powerbarSpeed = 1.4;
float powerbarAccel = .13;

void setup(){
 size(1080, 720);
 background(255);
 rectMode(CENTER);
 
 //background art
 for(int stripeX = 100; stripeX < width + 300; stripeX += 200){
   stroke(188, 23, 37);
   strokeWeight(100);
   line(stripeX, 0, stripeX - 400, height);
 }
   
 fill(255);
 noStroke();
 circle(540, 360, 611);  
 
 //soccer ball logo
 stroke(0);
 strokeWeight(2);
 fill(0);
 
 line(540, 244.53, 440, 302.27);
 line(540, 244.53, 640, 302.27);
 line(540, 475.47, 640, 417.73);
 line(540, 475.47, 440, 417.73);
 line(640, 302.27, 640, 417.73);
 line(440, 302.27, 440, 417.73);
  
 line(740, 244.53, 840, 302.27);
 line(740, 244.53, 640, 302.27);
 line(740, 475.47, 840, 417.73);
 line(740, 475.47, 640, 417.73);
 
 line(340, 244.53, 240, 302.27);
 line(340, 244.53, 440, 302.27);
 line(340, 475.47, 240, 417.73);
 line(340, 475.47, 440, 417.73);
 
 line(540, 244.53, 540, 129.06);
 line(340, 244.53, 340, 129.06);
 line(740, 244.53, 740, 129.06);
 
 line(540, 475.47, 540, 590.94);
 line(340, 475.47, 340, 590.94);
 line(740, 475.47, 740, 590.94);
  
 line(540, 129.06, 440, 71.33);
 line(540, 129.06, 640, 71.33);
  
 line(540, 590.94, 440, 648.67);
 line(540, 590.94, 640, 648.67);
  
 noFill();
 strokeWeight(2);
 circle(540, 360, 611);
 
 
 //text logo
 fill(255, 180);
 noStroke();  
 rect(540, 290, 900, 100);

 
 fill(0);
 textAlign(CENTER);
 textSize(80);
 text("PENALTY SHOOT OUT", 540, 320);
 textSize(pressenterSize);
 text("Press ENTER to play", 540, 510);
 textSize(20);
 text("v2.0", 1020, 680);
 
}


void draw(){
  if(gameOnOff){
    
    //background art
    rectMode(CENTER);
    fill(255, 209, 210);
    noStroke();
    rect(540, 200, 1080, 120);
    fill(255);
    rect(540, 200, 400, 200);
    fill(216, 255, 196);
    rect(540, 510, 1080, 420);
    
    strokeWeight(10);
    stroke(0);
    line(340, 100, 340, 300);
    line(340, 100, 740, 100);
    line(740, 100, 740, 300);
    
    strokeWeight(1);
    line(340, 100, 360, 280);
    line(740, 100, 720, 280);
    line(360, 280, 720, 280);
    line(360, 280, 340, 300);
    line(720, 280, 740, 300);
    
    stroke(240);
    line(380, 120, 360, 140);
    line(420, 120, 360, 180);
    line(460, 120, 360, 220);
    line(500, 120, 360, 260);
    line(540, 120, 400, 260);
    line(580, 120, 440, 260);
    line(620, 120, 480, 260);
    line(660, 120, 520, 260);
    line(700, 120, 560, 260);
    line(720, 140, 600, 260);
    line(720, 180, 640, 260);
    line(720, 220, 680, 260);
    
    line(380, 140, 500, 260);
    line(480, 140, 600, 260);
    line(580, 140, 700, 260);
    
    //grass
    stroke(43, 147, 54);
    for(int grassX = 20; grassX < width; grassX += 180){
      for(int grassY = 320; grassY < height; grassY += 140){
        line(grassX, grassY, grassX + 5, grassY - 12);
        line(grassX + 5, grassY - 12, grassX + 10, grassY);
        line(grassX + 10, grassY, grassX + 12, grassY - 6);
        line(grassX + 12, grassY - 6, grassX + 14, grassY);
      }
    }   
    for(int grassX = 40; grassX < width; grassX += 190){
      for(int grassY = 390; grassY < height; grassY += 140){
        line(grassX, grassY, grassX + 5, grassY - 12);
        line(grassX + 5, grassY - 12, grassX + 10, grassY);
        line(grassX + 10, grassY, grassX + 12, grassY - 6);
        line(grassX + 12, grassY - 6, grassX + 14, grassY); 
      }
    }
    
    //instruction text
    textSize(30);
    fill(0);
    textAlign(CENTER);
    text("Click on the ball and hold down the mouse to aim and shoot", 540, 50);

    //ball shoot hover color
    if(mouseX > 470 && mouseX < 610 && mouseY < 670 && mouseY > 530){
      fill(255, 255, 111);
      noStroke();
      ellipse(540, 600, 160, 160);
    }
    
      fill(255);
      stroke(0);
      ellipse(540, 600, 140, 140);
      
    //ball shoot animation
    if(mousePressed){
      if(mouseX > 470 && mouseX < 610 && mouseY < 670 && mouseY > 530){        
        fill(255, 120, 49);
        noStroke();
        ellipse(540, 600, 160, 160);
        
        fill(255);
        stroke(0);
        ellipse(540, 600, 140, 140);
        
        rectMode(CORNER);
        
        noFill();
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
        triangle(540 + ((mouseX - 540)*1.8), 450 + (abs(mouseX - 540)*0.3), 
                 535 + ((mouseX - 540)*1.4), 480 + ((mouseX - 540)*-0.1),
                 545 + ((mouseX - 540)*1.4), 480 + ((mouseX - 540)*0.1));
      }     
      
    }
  }
}

void mouseReleased(){
  if(gameOnOff){
    if(mouseX > 470 && mouseX < 610 && mouseY < 670 && mouseY > 530){
    background(255);
    rectMode(CENTER);
    
    //background art
    fill(255, 209, 210);
    noStroke();
    rect(540, 200, 1080, 120);
    fill(255);
    rect(540, 200, 400, 200);
    fill(120, 225, 65, 20);
    rect(540, 510, 1080, 420);
    
    strokeWeight(10);
    stroke(0);
    line(340, 100, 340, 300);
    line(340, 100, 740, 100);
    line(740, 100, 740, 300);
    
    strokeWeight(1);
    line(340, 100, 360, 280);
    line(740, 100, 720, 280);
    line(360, 280, 720, 280);
    line(360, 280, 340, 300);
    line(720, 280, 740, 300);
    
    stroke(230);
    line(380, 120, 360, 140);
    line(420, 120, 360, 180);
    line(460, 120, 360, 220);
    line(500, 120, 360, 260);
    line(540, 120, 400, 260);
    line(580, 120, 440, 260);
    line(620, 120, 480, 260);
    line(660, 120, 520, 260);
    line(700, 120, 560, 260);
    line(720, 140, 600, 260);
    line(720, 180, 640, 260);
    line(720, 220, 680, 260);
    
    line(380, 140, 500, 260);
    line(480, 140, 600, 260);
    line(580, 140, 700, 260);
    
    //new ball position
    fill(255);
    stroke(0);
    ballposX = 540 + ((targetX - 540) * 1.68 * (1 + (powerbarHeight * -0.005)));
    if(powerbarHeight > -80){                              //different height factor when power bar below 80
      ballposY = 270 + (powerbarHeight * 1.85);
    } else{
      ballposY = 122 + ((powerbarHeight + 80) * 4.5);
    }
    ellipse(ballposX, ballposY, 60, 60);
    
    gameOnOff = false;                                     //reset variables   
    powerbarHeight = 0;
    
    if(ballposX > 355 & ballposX < 725 & ballposY > 122){
      textSize(goaltextSize);
      fill(0);
      textAlign(CENTER);
      text("GOOOAL!", goaltextX, goaltextY);
      textSize(pressenterSize);
      text("Press ENTER to play again", goaltextX, goaltextY + 80);      
    } else if(ballposX > 365 & ballposX < 715 & ballposY > 113) {
      textSize(goaltextSize);
      fill(0);
      textAlign(CENTER);
      text("GOOOAL!", goaltextX, goaltextY);
      textSize(pressenterSize);
      text("Press ENTER to play again", goaltextX, goaltextY + 80);
    } else {
      textSize(goaltextSize);
      fill(0);
      textAlign(CENTER);
      text("NO GOAL!", goaltextX, goaltextY);
      textSize(pressenterSize);
      text("Press ENTER to play again", goaltextX, goaltextY + 80);
    }
  }
  }
}

void keyPressed(){
    if (key == 10 && gameOnOff == false){
      gameOnOff = true;
      background(255);
  }
}
