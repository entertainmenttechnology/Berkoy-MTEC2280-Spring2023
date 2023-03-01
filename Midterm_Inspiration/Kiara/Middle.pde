 //This is the start of the Middle section  
   void middle(){
   if(state== "Middle"){
    background (255);
  //  text("what a fun game.",width/2, height/2 );
  //  text("click again.",width/2, height/2+50);
    
    //start of the pattern 
    
  frameRate(10);
for (int x = 0; x < width; x+=20 ) 
{
  for (int y = 0; y < height; y+=20)
  {
    stroke(10);
    fill(r,g,b);
    ellipse(x,y,big-1,big-1);
    rect(x,y,5,5);
    rect(x,y,big-1,big-1);
}
    r +=mouseX+ random(10);
  g += mouseX+random(10);
    b += mouseX+random(10);
    
  
  if ( r > 255 )
{
    r = 0;
}
  if ( g > 255 )
{
    g = 0;
}

  if ( b > 255 )
{
    b = 0;
}
} 
 fill(255);
    rect(250,750,500,150);
    fill(0);   
 //rect(250,750,500,100);  
 
 text("colors can change.",500,780);
 text("move mouse arond on the left side of the screen.",500,800);
 text("press E for next state.",500, 820);   
   
    
   }
   }
