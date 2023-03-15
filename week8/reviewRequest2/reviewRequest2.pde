/*
Special request:
How to display a "button" and trigger another state after clicking on it

Interaction: click the button
*/


String state= "text1";

void setup(){
  size(500,500);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(44);
}

void draw(){
  if (state=="text1"){
  background(0);
  rect(width/2, height/2, 100, 100);
  } else if (state=="text2"){
    background(255,0,0);
    text("hi!", width/2, height/2);
  }
  println(state);
}

void mousePressed(){
  if(state=="text1"){
    if(mouseX> width/2-50 && mouseX < width/2 + 50 && mouseY > height/2-50 && mouseY< height/2+50)
    state= "text2";
  }
}
