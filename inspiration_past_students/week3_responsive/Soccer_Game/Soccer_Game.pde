//Soccer Game by Terry Chun

/*
Simulates penalty shots by having user aim with mouse
and shoot with left mouse click.
Ball will shoot with random X offset from mouse position X
and a random y position,
and will either show "goal" or "no goal" depending on ball location.
*/

boolean gameOnOff = false;
float ballposX = 0;
float ballposY = 0;
int goaltextX = 540;
int goaltextY = 380;
int goaltextSize = 75;
int pressenterSize = 40;

void setup(){
 size(1080, 720);
 background(255);
 rectMode(CENTER);
 
 //text logo
 fill(0);
 textSize(80);
 textAlign(CENTER);
 text("PENALTY SHOOT OUT", 540, 320);
 textSize(pressenterSize);
 text("Press ENTER to play", 540, 470);
 textSize(20);
 text("v1.0", 1000, 680);
 
 
 //soccer ball logo
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
}


void draw(){
  if(gameOnOff){
    
    //background art
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
    
    fill(255);
    stroke(0);
    ellipse(540, 600, 140, 140);
    
    textSize(40);
    fill(0);
    textAlign(CENTER);
    text("Aim with mouse and left-click to shoot", 540, 50);

    if(mousePressed){      
    background(255);
    
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
    ballposX = random(mouseX - 250, mouseX + 250);
    ballposY = random(0, 240);
    ellipse(ballposX, ballposY, 60, 60);
    gameOnOff = false;
    
    if(ballposX > 355 & ballposX < 725 & ballposY > 135){
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
