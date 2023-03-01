void test()

{ 
  println("Kiara is  alright");
  
  if (state == "Start"){
    background(r,g,b);
    fill(255);
    rect(250,750,500,100);
    fill(0);
    textSize(16);
    text("Lets a Go, it's Mario time ", 500,780);
    text("press any key to change background color",500,800);
    text("move mouse around ", 500,820);
    text("press W for next state", 500, 840);
    
    if(mouseX > 500){
  //The flower
  //outline of the flower black and eyes
   fill(0);
   rect(500,150,50,100);
   rect(650,150,50,100);
   rect(200,100,50,250);
   rect(250,100,50,50);
   rect(250,50,150,50);
   rect(800,50,150,50);
   rect(350,0,500,50);
   rect(900,100,50,50);
   rect(950,100,50,250);
   rect(250,300,50,100);
   rect(300,350,100,50);
   rect(350,400,500,50);
   rect(800,350,150,50);
   rect(900,300,50,50);
   rect(500,450,50,150);
   rect(650,450,50,150);
   rect(700,550,50,50);
   rect(750,500,100,50);
   rect(850,450,100,50);
   rect(950,500,50,100);
   rect(450,550,50,50);
   rect(350,500,100,50);
   rect(250,450,100,50);
   rect(200,500,50,100);
   rect(250,600,50,50);
   rect(900,600,50,50);
   rect(300,650,600,50);
   //the leef green 
   fill(0,200,0);
   rect(550,450,100,150);
   rect(300,600,600,50);
   rect(250,550,200,50);
   rect(750,550,200,50);
   rect(250,500,100,50);
   rect(850,500,100,50);
   //flower top orange
   fill(240,120,0);
   rect(400,50,400,50);
   rect(300,300,600,50);
   rect(400,350,400,50);
   rect(250,250,200,50);
   rect(750,250,200,50);
   rect(300,100,150,50);
   rect(750,100,150,50);
   rect(250,150,100,100);
   rect(850,150,100,100);
   //center of flower yellow
   fill(245,210,12);
   rect(450,100,300,50);
   rect(350,150,150,100);
   rect(450,250,300,50);
   rect(700,150,150,100);
   rect(550,200,100,50);
   for(int i=1; i<=10; i=i+1){
    print(i);
  }
  for(int i=0; i<width; i+=50){
  line(i,0,i,height);//  line(x1,y1,x2,y2);
  }
  
  for(int i=0; i<height; i+=50){
    line(0,i,width,i);
  }
  }else if(mouseX > 400){
 //////////////////////////////  
    //mario
  //marios hat and shirt red
  fill(255,0,0);
  rect(350,0,300,50);
  rect(300,50,500,50);
  rect(450,350,100,100);
  rect(300,350,100,150);
  rect(600,350,100,150);
  rect(250,400,50,100);
  rect(200,450,50,50);
  rect(300,500,50,50);
  rect(700,400,50,100);
  rect(750,450,50,50);
  rect(650,500,50,50);
  //buttons yellow
  fill(247,236,7);
  rect(400,500,50,50);
  rect(550,500,50,50);
  
  //hair black and eyes
  fill(0);
  rect(300,100,150,50);
  rect(350,150,50,100);
  rect(400,200,50,50);
  rect(600,100,50,100);
  rect(650,200,50,50);
  rect(600,250,200,50);
  rect(250,150,50,150);
  rect(300,250,50,50);
  //marios skin tan
  fill(252,232,209);
  rect(300,150,50,100);
  rect(400,150,200,50);
  rect(450,200,200,50);
  rect(350,250,250,50);
  rect(350,300,400,50);
  rect(650,100,50,100);
  rect(700,150,100,100);
  rect(800,200,50,50);
  rect(450,100,150,50);
  //gloves and jumpsuit
  //strokeWeight(4);
  rect(200,500,100,150);
  rect(300,550,50,50);
  rect(700,500,100,150);
  rect(650,550,50,50);
  fill(0);
  rect(450,650,100,100);
  //shoes brown
  fill(139,85,18);
  rect(200,700,200,50);
  rect(600,700,200,50);
  fill(0);
  rect(200,650,100,50);
  rect(700,650,100,50);
  
  for(int i=1; i<=10; i=i+1){
    print(i);
  }
  for(int i=0; i<width; i+=50){
  line(i,0,i,height);//  line(x1,y1,x2,y2);
  }
  
  for(int i=0; i<height; i+=50){
    line(0,i,width,i);
  }
  }else if (mouseX > 300){
 /////////////////////////////////////////  
   //mushroom
  ///outline and eyes black
  fill(0);
  rect(350,1,300,50);
  rect(250,50,100,50);
  rect(650,50,100,50);
  rect(200,100,50,50);
  rect(750,100,50,50);
  rect(150,150,50,100);
  rect(800,150,50,100);
  rect(100,250,50,200);
  rect(850,250,50,200);
  rect(150,450,150,50);
  rect(300,400,400,50);
  rect(700,450,150,50);
  rect(400,450,50,100);
  rect(550,450,50,100);
  rect(200,500,50,100);
  rect(750,500,50,100);
  rect(250,600,50,50);
  rect(700,600,50,50);
  rect(300,650,400,50);
  //mushroom top
  fill(255,0,0);
  rect(150,350,50,100);
  rect(200,400,100,50);
  rect(150,250,50,50);
  rect(200,200,200,50);
  rect(250,250,100,50);
  rect(250,350,500,50);
  rect(700,400,100,50);
  rect(300,300,50,50);
  rect(350,150,50,50);
  rect(400,50,250,150);
  rect(650,150,50,50);
  rect(700,200,50,50);
  rect(700,250,150,50);
  rect(750,300,50,50);
  rect(550,200,150,50);
  rect(600,250,100,50);
  rect(550,300,200,50);
  rect(350,300,50,50);
  
  for(int i=1; i<=10; i=i+1){
    print(i);
  }
  for(int i=0; i<width; i+=50){
  line(i,0,i,height);//  line(x1,y1,x2,y2);
  }
  
  for(int i=0; i<height; i+=50){
    line(0,i,width,i);
  }
  }else if(mouseX > 200){
  ///////////////////////////////////////////////////
   //luigi
  //luigi hat and shirt green
  fill(0,255,0);
  rect(350,0,300,50);
  rect(300,50,500,50);
  rect(450,350,100,100);
  rect(300,350,100,150);
  rect(600,350,100,150);
  rect(250,400,50,100);
  rect(200,450,50,50);
  rect(300,500,50,50);
  rect(700,400,50,100);
  rect(750,450,50,50);
  rect(650,500,50,50);
  //buttons yellow
  fill(247,236,7);
  rect(400,500,50,50);
  rect(550,500,50,50);
  
  //hair black and eyes
  fill(0);
  rect(300,100,150,50);
  rect(350,150,50,100);
  rect(400,200,50,50);
  rect(600,100,50,100);
  rect(650,200,50,50);
  rect(600,250,200,50);
  rect(250,150,50,150);
  rect(300,250,50,50);
  //marios skin tan
  fill(252,232,209);
  rect(300,150,50,100);
  rect(400,150,200,50);
  rect(450,200,200,50);
  rect(350,250,250,50);
  rect(350,300,400,50);
  rect(650,100,50,100);
  rect(700,150,100,100);
  rect(800,200,50,50);
  rect(450,100,150,50);
  //gloves and jumpsuit
  //strokeWeight(4);
  rect(200,500,100,150);
  rect(300,550,50,50);
  rect(700,500,100,150);
  rect(650,550,50,50);
  fill(0);
  rect(450,650,100,100);
  //shoes brown
  fill(139,85,18);
  rect(200,700,200,50);
  rect(600,700,200,50);
  fill(0);
  rect(200,650,100,50);
  rect(700,650,100,50);
  
  for(int i=1; i<=10; i=i+1){
    print(i);
  }
  for(int i=0; i<width; i+=50){
  line(i,0,i,height);//  line(x1,y1,x2,y2);
  }
  
  for(int i=0; i<height; i+=50){
    line(0,i,width,i);
  }
  
  
  }
    
  }
}
