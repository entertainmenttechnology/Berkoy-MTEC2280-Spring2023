//BOXTOWN
//by nathan mierski
//all crashes intentional

ParticleSystem boxspew;
boolean need = false;
int less = 5;
int lessless = 2;
int minutecheck = 60;
int arbitron = 0;
int state = 0;
int diskresult;
PShape computer;
PShape closedBox;
PShape openBox;
PShape voidBox;
PShape disk;
PShape boxElements;
PFont bigArial;
PFont smallArial;
PImage terrible;
int currentTime = 0;
int savedTime = 0;


void setup(){
 pushMatrix();
 textAlign(CORNER);
 boxspew = new ParticleSystem (new PVector (width/2, height/2));
 fullScreen();
 computer = loadShape("computer.svg");
 terrible = loadImage("terrible.jpg");
 disk = loadShape("boxdrive.svg");
 closedBox = loadShape("closedbox.svg");
 openBox = loadShape("openbox.svg");
 bigArial = createFont("Arial", 128);
 smallArial = createFont("Arial", 32);
 diskresult = int(random(1,3));
}

void draw(){
  currentTime = millis();
  print(arbitron);  
  if (state == 0){
    diskresult = int(random(1,3.99));
    background(255);
    shape(closedBox, width/2 - closedBox.width/2, height/2 - closedBox.height/2);
    fill(0);
    textFont(bigArial);
    text("boxtown", 0, height);
    textFont(smallArial);
    text("Click the box to go", 0, 32);
    if (mouseX > width/2 - closedBox.width/2 && mouseX <width/2 + closedBox.width/2 && mouseY > height/2 - closedBox.height/2 && mouseY < height/2 + closedBox.height/2){
      arbitron = 1;
    }
    else {
      arbitron = 0;
    }
  }
  else if (state == 1){
    background(255);
    shape(closedBox, width/3 - closedBox.width/2, height/2 - closedBox.height/2);
    shape(closedBox, width/2 - closedBox.width/2, height/2 - closedBox.height/2);
    shape(closedBox, width*.66 - closedBox.width/2, height/2 - closedBox.height/2);
    fill(255);
    rect(0, height-90, width, 90);
    fill(0);
    text("In front of you lie three boxes full of mystery and excitement", 0, height-90, width, 90);
    if (mouseX > width/3 - closedBox.width/2 && mouseX < width/3 + closedBox.width/2 && mouseY > height/2 - closedBox.height/2 && mouseY < height/2 + closedBox.height/2){
      arbitron = 1;
    }
    else if (mouseX > width/2 - closedBox.width/2 && mouseX <width/2 + closedBox.width/2 && mouseY > height/2 - closedBox.height/2 && mouseY < height/2 + closedBox.height/2){
      arbitron = 2;
    }
    else if (mouseX > width*.66 - closedBox.width/2 && mouseX <width*.66 + closedBox.width/2 && mouseY > height/2 - closedBox.height/2 && mouseY < height/2 + closedBox.height/2){
      arbitron = 3;
    }
    else {
      arbitron = 0;
    }
  }
  else if (state == 2){
    background(255);
    fill(255);
    rect(0, height-90, width, 90);
    fill(0);
    text("The box opens to a void", 0, height-90, width, 90);
    shape(openBox, width/2-openBox.width/2, height/2-openBox.height/2);
    arbitron = 9;
  }
    //voidbox
  else if (state ==3){
    background(255);
    fill(255);
    rect(0, height-90, width, 90);
    fill(0);
    text("The box opens to a smaller box", 0, height-90, width, 90);
    if (less != state){
      pushMatrix();
      closedBox.translate(+width/2, +height/2);
      closedBox.scale(.75);
      closedBox.translate(-width/2, -height/2);
      popMatrix();
      less = state;
    }
    shape(closedBox, width/2-closedBox.width, height/2-closedBox.height);
    if (mouseX > width/2 - closedBox.width/2 && mouseX <width/2 + closedBox.width/2 && mouseY > height/2 - closedBox.height/2 && mouseY < height/2 + closedBox.height/2){
      arbitron = 5;
    }
    else {
      arbitron = 0;
    }
    //smallbox goes to 8
  }
  else if (state == 4){
    background(255);
    fill(255);
    rect(0, height-90, width, 90);
    fill(0);
    text("You find a small disk inside the box, do you want to plug it in?", 0, height-90, width, 90);
    shape(disk, width/2 - disk.width/2, height/2 - disk.height/2);
    if (mouseX > width/2 - closedBox.width/2 && mouseX <width/2 + closedBox.width/2 && mouseY > height/2 - closedBox.height/2 && mouseY < height/2 + closedBox.height/2){
      arbitron = diskresult;
    }
    else {
      arbitron = 0;
    }
    //discobox
  }
  else if (state == 5){
    background(255);
    image(terrible, 0, 0);
    fill(255);
    image(terrible, 0, 0);
    rect(0, height-90, width, 90);
    fill(0);
    text("Aw dang, it's terrible pornography", 0, height-90, width, 90);
    arbitron = 999;
  }
    else if (state == 6){
    background(255);
    fill(255);
    rect(0, height-90, width, 90);
    fill(0);
    text("Looks like some weird school project", 0, height-90, width, 90);
    shape(computer, width/2-computer.width/2, height/2-computer.height/2);
    arbitron = -6;
  }
  else if (state == 7){
    arbitron = 0;
    background(255);
    fill(255);
    rect(0, height-90, width, 90);
    fill(0);
    text("aw jeez, i think it's a virus", 0, height-90, width, 90);
    shape(computer, width/2-computer.width/2, height/2-computer.height/2);
    if (currentTime - savedTime >1000){
      savedTime = currentTime;
      less--;
    }
    if (less <= 0){
      System.exit(-1);
    }
  }
  else if (state ==8){
    background(255);
    fill(255);
    rect(0, height-90, width, 90);
    fill(0);
    if (less != state){
      pushMatrix();
      closedBox.translate(+width/2, +height/2);
      closedBox.scale(.75);
      closedBox.translate(-width/2, -height/2);
      popMatrix();
      less = state;
    }
    shape(closedBox, width/2 - closedBox.width/2, height/2 - closedBox.height/2);
    text("oh jeez", 0, height-90, width, 90);
    arbitron = 1;
    }
  else if (state ==9){
    background(255);
    fill(255);
    rect(0, height-90, width, 90);
    fill(0);
    if (less != state){
      closedBox.translate(+width/2, +height/2);
      closedBox.scale(.75);
      closedBox.translate(-width/2, -height/2);
      less = state;
    }
    shape(closedBox, width/2 - closedBox.width/2, height/2 - closedBox.height/2);
    text("...", 0, height-90, width, 90);
    arbitron = 1;
  }
  else if (state == 10){
    background(255);
    fill(255);
    rect(0, height-90, width, 90);
    fill(0);
    text("the box is gone. you've killed my game", 0, height-90, width, 90);
    arbitron = 999;
  }
  else if (state == 11){
   background(255);
   textFont(bigArial);
   textAlign(CENTER);
   rect(0,0, width/2, height);
   text("No", width*.66, height/2);
   fill(255);
   text("Yes", width/3, height/2);
   rect(0, height-90, width, 90);
   textFont(smallArial);
   textAlign(CORNER);
    fill(0);
   text("Enter the void?", 0, height-90, width, 90);
   if (mouseX < width/2){
     arbitron = 1;
   }
   else {
     arbitron = 2;
   }
  }
   else if (state == 12){
   arbitron = 0;
   background(int(cos(frameCount)*255),int(sin(frameCount)*255),int(sin(frameCount)*255));  
   println(frameCount);
   fill(int(sin(frameCount)*255),int(sin(frameCount)*255),int(sin(frameCount)*255));
   textFont(bigArial);
   textAlign(CENTER, CENTER);
   text("TRANSITION", width/2, height/2);
   if (currentTime - savedTime >1000){
      savedTime = currentTime;
      lessless--;
    }
    if (lessless <= 0){
      state = 14;
    }
   }
   else if (state == 13){
     background(255);
     fill(255);
     rect(0, height-90, width, 90);
     fill(0);
     text("cool. now go read a book or something, jeez.", 0, height-90, width, 90);
     arbitron = 999;
   }
   else if (state == 14){
     background(0);
     fill(255);
     rect(0, height-90, width, 90);
     fill(0);
     textAlign(CORNER);
     textFont(smallArial);
     text("the void is quiet and dark.", 0, height-90, width, 90);
     arbitron = 1;
   }
   else if (state == 15){
     background(0);
     fill(255);
     rect(0, height-90, width, 90);
     fill(0);
     textAlign(CORNER);
     textFont(smallArial);
     text("take this time to quietly reflect about your day", 0, height-90, width, 90);
     arbitron = 1;
   }
   else if (state == 16){
     background(0);
     fill(255);
     rect(0, height-90, width, 90);
     fill(0);
     textAlign(CORNER);
     textFont(smallArial);
     text("no. really. take a minute.", 0, height-90, width, 90);
   if (currentTime - savedTime >1000){
      savedTime = currentTime;
      minutecheck--;
    }
    if (minutecheck <= 0){
      arbitron = 1;
    }
    else {
      arbitron = 999;
    }
   }
   else if (state == 17){
     background(0);
     fill(255);
     rect(0, height-90, width, 90);
     noStroke();
     triangle(width/2, 0, width/2-45, height, width/2+10, height);
     fill(0);
     textAlign(CORNER);
     textFont(smallArial);
     text("suddenly, a glimmer of light appears in the distance", 0, height-90, width, 90);
     arbitron = 1;
   }
   else if (state == 18) {     
     background(255);
     boxspew.addParticle();
     boxspew.run();
     fill(255);
     rect(0, height-90, width, 90);
     fill(0);
     textAlign(CORNER);
     textFont(smallArial);
     text("behold, hypercube", 0, height-90, width, 90);
     arbitron = 1;
    }
  else if (state == 20) {
    background(0,255,0);
    textAlign(CENTER);
    fill(255);
    text("END!", width/2, height/2);
    arbitron = -20;
    setup();
    need = false;
    less = 5;
    lessless = 3;
    minutecheck = 60;
    popMatrix();
  }
    
  else if (state >= 999){
    state = 999;
    background(255,0,0);
    textAlign(CENTER);
    fill(0);
    text("BAD END", width/2, height/2);
    arbitron = -999;
    need = false;
    less = 5;
    lessless = 3;
    minutecheck = 60;
    setup();
    popMatrix();
  }
 
}

void mousePressed() {
  print("mouse'd");
  state = state + arbitron;
}

class ParticleSystem {
  ArrayList<Box> boxes;
  PVector origin;
  
  ParticleSystem(PVector location){
    origin = location.copy();
    boxes = new ArrayList<Box>();
  }
  
  void addParticle(){
    boxes.add(new Box(origin));
  }
  
  void run(){
    for (int i = boxes.size()-1; i >= 0; i--) {
      Box b = boxes.get(i);
      b.run();
      if (b.isDead()) {
        boxes.remove(i);
      }
    }
  }
}

class Box {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Box(PVector l) {
    acceleration = new PVector(0,0.01);
    velocity = new PVector(random(-2,2),random(-2,0));
    location = l.copy();
    lifespan = 255.0;
  }

  void run() {
    update();
    display();
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.0;
  }

  void display() {
    shape(closedBox, location.x, location.y);
  }
  
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}

void dialogue(String content){
  fill(255);
  rect(0, height-90, width, 90);
  fill(0);
  text(content, 0, height-90, width, 90); 
}