//by Jun

//////////////////////////////////////////////////////////////////////// title  circle
/////////////////////////////////////////////////////////////////////// author Jun Huang
float a=1;
float x=0;
float y=0;
float r;
float g;
float b;

void setup(){
size(1080,1080);
background(0);
}

void draw(){

translate(width/2,height/2);
rotate(radians(a));

//fill color below
fill(r,g,b);
noStroke();
ellipse (x+90,y+90,10,10);
ellipse (x+170,y+170,30,30);
ellipse (x+260,y+260,10,10);
rect (x+350,y+350,10,10);

// no fill color below
stroke(r,g,b);
noFill();
rect(x,y,60,60,10);
rect(x+100,y+100,50,50,10);
rect(x+190,y+190,70,70,10);
rect(x+230,y+230,20,20,10);
ellipse (x,y,200,200);
ellipse (x,y,950,770);

a=a+10;

if(mousePressed){
b=random(150);
g=random(100,250);
r=random(100,250);
} else{
r=random(150);
g=random(100,250);
b=random(100,250);
}
}
