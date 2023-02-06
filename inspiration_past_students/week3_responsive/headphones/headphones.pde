//Walking down the street with headphones by Shequana Garnett
float fade=0;
float speed=.1;
float x = 0;
float y = 0;
float xMove =1;
float yMove =1;
float tip = 520;
void setup() {
  size(1080, 720);
  ellipseMode(CENTER);
}

void draw() {
  background(102, 0, 0);
  if (mousePressed) {
    fill(0, 127, 186, fade++);
  } else {  
    fill(0, 127, 186, fade--);
  }
  rect(0, 0, 1080, 720);
  noStroke();
  //background_circle
  fill(0, 0, 0, 50);
  ellipse(mouseX, mouseY, 600, 600);
  fill(0, 0, 0, 50);
  ellipse(mouseX, mouseY, 700, 700);
  fill(0, 0, 0, 50);
  ellipse(mouseX, mouseY, 800, 800);
  fill(233, 222, 255, 50);
  ellipse(mouseX, mouseY, 900, 900);

  //tri left
  strokeWeight(10);
  stroke(255, 54, 158);
  fill(94, 198, 230);
  //_original_triangle(0, 720, 0, 520, 720, 0);
  if (mousePressed) {
    triangle(0, 720, 0, 520, tip--, tip--);
  } else {
    triangle(0, 720, 0, 520, mouseX, mouseY);
  }
  //face
  fill(0, 0, 0, 80);
  ellipse(mouseX, mouseY, 500, 500);
  //tri right (left/right,up/down) (left,top,right)
  fill(94, 198, 230);
  //triangle(700, 700, 520, 0, 720, 0);
  if (mousePressed) {  
    triangle(tip--, tip--, 520, 0, 720, 0);
  } else {  
    triangle(mouseX, mouseY, 520, 0, 720, 0);
  }
//close and open eyes
  if (mousePressed) {
    //left eye
    fill(171, 194, 174);
    ellipse(mouseX-120, mouseY-30, 200, 1);
    ellipse(mouseX-120, mouseY-30, 90, 1);
  } else {
    fill(171, 194, 174);
    ellipse(mouseX-120, mouseY-30, 200, 100);
    ellipse(mouseX-120, mouseY-30, 90, 90);
  }
  strokeWeight(10);
  //right eye
  if (mousePressed) {
    fill(171, 194, 174);
    ellipse(mouseX+120, mouseY-30, 200, 1);
    ellipse(mouseX+120, mouseY-30, 90, 1);
  } else {
    fill(171, 194, 174);
    ellipse(mouseX+120, mouseY-30, 200, 100);
    ellipse(mouseX+120, mouseY-30, 90, 90);
  }

  //headphones
  if (mousePressed) {
    noFill();
    arc(mouseX, mouseY, 600, 600, 1, 360);
    fill(0);
    ellipse(mouseX+300, mouseY, 100, 300); 
    ellipse(mouseX-300, mouseY, 100, 300);
  }


  fill(251, 255, 0);
  strokeWeight(30);
  if (mousePressed) {
    ellipse(x+210, y+100, 300, 300);
    ellipse(x+910, y+500, 300, 300);
    ellipse(x+910, y+50, 200, 200);
    x=x+xMove;
    y=y+yMove;
  } else if 
    (x>width||y>height) {
    ellipse(X+210, y+100, 300, 300);
    ellipse(X+910, y+500, 300, 300);
    ellipse(X+910, y+50, 200, 200);
    x=x-xMove;
    y=y-yMove;
  } else {
    ellipse(210, 100, 300, 300);
    ellipse(910, 500, 300, 300);
    ellipse(910, 50, 200, 200);
  }
}


void mousePressed() {
  xMove=random(-50, 50);
  yMove=random(10, 10);
}
