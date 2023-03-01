//Name:AnshuoWu Title:Self Portrait 
//You can move your mouse and see the change of my expression.
PImage img;
PFont font;
void setup(){
size(720,1080);
font = createFont("SourceCodePro-Regular.ttf",32);
textFont(font);
img = loadImage("woa.jpg");
}
void draw()
{

image(img,0,0);
textSize(32);

//fill(0,255,0);
//rect(270,250,30,30);
//rect(400,250,30,30);
//rect(450,330,30,30);
//rect(500,330,40,90);

if (mouseX>240 && mouseX<300 && mouseY>220&&mouseY<280){
  img = loadImage("wob.jpg");
   text("Don't touch me",25,70);
}else if (mouseX>350 && mouseX<450 && mouseY>220&&mouseY<280){
  img = loadImage("woc.jpg");
    text("Don't touch my eye",5,70);
}else if (mouseX>420 && mouseX<480 && mouseY>300&&mouseY<360){
  img = loadImage("wod.jpg");
    text("I love you",25,70);
}else if (mouseX>470 && mouseX<540 && mouseY>350&&mouseY<420){
   img = loadImage("woe.jpg");
    text("Fuck off!!!",25,70);
} else { img = loadImage("woa.jpg");
  text("What's up",25,70);
}
} 