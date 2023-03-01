void end2(){
  
  if (state== "End2"){
    //background (255);
    fill(255);
    rect(250,750,500,150);
    fill(0);
    textSize(16);
    text("Lets make some squares appear.",500,800 );
    text("press and hold or click the mouse for squares to appear.",500,820);
    text("press T to clear the screen.",500,840);
    text("press Q to go back to the start.",500,860);
    //patterns
   
  if ( mousePressed ==true){
    frameRate(30);
      fill(random(0,255), random(0,255),random(0,255));
      //Using rectmode center throws off the calibration of the Mario sketch
     // rectMode(CENTER);
      rect(mouseX,mouseY,size ,size);
    //  fill(0);
     // ellipse(mouseX,mouseY,size ,size);
    }
    if(size <= 25){
      size = size + 10;
    } else if (size >= 50){
      size = 10;
    } else {
        size = size + 10;
    }
    
    
  }
  println (state); 

  
  
}
