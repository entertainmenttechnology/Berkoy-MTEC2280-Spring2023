//Kiara Wright
//Midterm Part 1
String state= "Start";
//backgrond set to random 
float r = 0;
float g = 0;
float b = 0;
//this is the Middle part 
float big = 20;//the float r,g,b, will corospond to this
//final section
float size =0;
float center= 0;

//this gose to the final click , Patterns 


void setup(){
  size(1080,880);
  textAlign(CENTER);
  textSize(36);
}


void draw(){
  test();
  middle();
  middle2();
  end();
  end2();
  
  //this is the start of the End part   
    
}

//Background color is set to random whwn key is pressed
void keyPressed(){
  
  if(key == 'q'){
    state = "Start";
  }
 else if(key =='w'){
    state = "Middle";
  }
  else if(key =='e'){
    state = "middle2";
  }
  else if(key =='r'){
    background(255);
    state = "End";
    
    //if(key =='r'){
     // clear();
    //}
  }else if(key == 't'){
    background(255);
    state = "End2";
  }
  
  
  
  
  //statement
  r = random(70, 150);
  g = random(100,220);
  b = random(100,190);
 ///this is for thhe final click for the patterns  
  
  
}
