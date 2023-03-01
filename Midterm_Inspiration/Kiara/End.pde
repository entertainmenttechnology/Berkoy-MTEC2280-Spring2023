


  void end(){
//Canvass not redrawing

if (state== "End"){
    //background (255);
    fill(255);
    rect(250,750,500,150);
    fill(0);
    text("Lets make some circles appear.",500,790);
    text("press and hold or click the mouse for circles to appear.",500,820);
    text("press R to clear the screen.",500,840);
    text("press T for next state.",500,860);
    //patterns
   
  if ( mousePressed ==true){
    frameRate(30);
      fill(random(0,255), random(0,255),random(0,255));
      //Using rectmode center throws off the calibration of the Mario sketch
     // rectMode(CENTER);
     // rect(mouseX,mouseY,size ,size);
    //  fill(0);
      ellipse(mouseX,mouseY,size ,size);
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

  
/*
  for(int i=1; i<=10; i=i+1){
    print(i);
  }
  for(int i=0; i<width; i+=50){
  line(i,0,i,height);//  line(x1,y1,x2,y2);
  }
  
  for(int i=0; i<height; i+=50){
    line(0,i,width,i);
  }
  */
  println("mouseX: " + mouseX);
  println("mouseY: " + mouseY);
   

}


//main screens 
/*
void mousePressed(){
  if (state == "Start"){
    state = "Middle";
  } else if (state == "Middle"){
    state = "End";
  } else if (state == "End"){
    state = "Start";
  }
 
}
*/
