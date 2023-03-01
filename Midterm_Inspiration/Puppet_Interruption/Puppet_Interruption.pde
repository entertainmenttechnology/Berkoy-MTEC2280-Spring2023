// puppet interruption //

//by Meg and Joanne

boolean start = false;
int size = 0;
int startTime;

int mouse = 0;
int value = 0;

int name = 0;

PImage gimp;
PImage gomer01;
PImage gomer02;
PImage yamman;
PImage skeptic;
PImage accomplice;
PImage gimpBed;
PImage gomerBed;
PImage yammanBed;

PImage background;
PImage blank;
PImage door;
PImage bed;
PImage open;
PImage partial;
PImage party;
PImage balloons_01;
PImage balloons_02;
PImage confetti;
PImage awake;
PImage peep;
PImage kid; 

float r;
float f = 8;
float g, h; //accomplice
float rot;
int event = 0;
float j; //skeptic
float k; // gomer01
float t; //gomer02
float z; //gimp
float w; //yamman
float x;
float i;
float d;
float q; // x bed
float p; // y bed

float e; // balloon height 
float u; // balloon left
float o; // balloon right

float c; // peek width
float s; // peek height

float xpos, ypos;    // Starting position of shape    

float xspeed = 2.8;  // Speed of the shape
float yspeed = 2.2;  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom


void setup () {
  h = 350;
  g = 850;  
  j = 1350;  
  k = 1850;  
  t = 2150;  
  z = 2550;  
  w = 3050;  
  x = 780;
  i = 500;
  d = 450;
  q = 100;
  p = 500;

  e = 600;
  u = 100;
  o = 980;
  
  c = width/2;
  s = 700;
  rot = 0;
  size (1080, 720);

  //load backgrounds
  peep = loadImage ("peep.png");
  background = loadImage ("ClosedDoor.jpg");
  balloons_01 = loadImage ("balloons_01.png");
  balloons_02 = loadImage ("balloons_02.png");
  confetti = loadImage ("confetti.png");
  party = loadImage ("party.jpg");
  door = loadImage ("OpenDoor.jpg");
  partial = loadImage ("PartialDoor.png");
  blank = loadImage ("window.png");
  bed = loadImage ("asleep.png");
  awake = loadImage ("awake.png");
  // load characters
  gimp = loadImage("gimp.png");
  gomer01 = loadImage("gomer01.png");
  gomer02 = loadImage("gomer02.png");
  yamman = loadImage("yamman-2.png");
  skeptic = loadImage("skeptic.png");
  accomplice = loadImage("accomplice.png");
  gimpBed = loadImage("gimp-bed.png");
  gomerBed = loadImage("gomer-bed.png");
  yammanBed = loadImage("yamman-bed.png");
  kid = loadImage("dancing.png");

  // counting mouse clicks
  mouse=0;
}

void draw () {
  int m = millis();
  int time = millis() - startTime;
  println(mouseX, mouseY);
  if (event == 0) {
    name=0;
    background (#FFE16A);
    background(background);
    image(bed, -350, height/3);

    // START KNOCK ON DOOR
    textSize (30);
    fill(0);
    text("You are in a deep slumber, when suddenly...", 50, 50);

    if (time > 2000) {
      textSize (35);
      fill(255);
      strokeWeight(0);
      text("((knock))", 560, 300);
    } 
    if (time > 3000) {
      textSize (45);
      fill(255);
      strokeWeight(0);
      text("((knock))", 710, 115);
    }
    if (time > 4000) {
      textSize (60);
      fill(255);
      strokeWeight(0);
      text("((knock))", 800, 280);
    }
    //Make a decision
    if (time > 5000) {
      textSize (20);
      text("'who is it?'", 650, 665); 
      text("stay in bed", 40, 665);
    }
  }
  // END KNOCK KNOCK SCENE

  // PUPPET PARADE
  if (event ==1) {
    mouse=1;
    name=1;
    background (#FFE16A);
    background(door);
    image(bed, -350, height/3);

    pushMatrix();
    translate (g, h);
    imageMode(CENTER);
    image(accomplice, 0, 0); 
    g -= 1.0;
    rot -= 0.01;
    popMatrix();

    pushMatrix();
    translate (j, h);
    imageMode(CENTER);
    image(skeptic, 0, 0); 
    j -= 1.0;
    rot -= 0.01;
    popMatrix();

    pushMatrix();
    translate (k, h);
    rotate(rot);
    imageMode(CENTER);
    image(gomer01, 0, 0); 
    k -= 1.0;
    rot -= 0.01;
    popMatrix();

    pushMatrix();
    translate (t, h);
    rotate(rot);
    imageMode(CENTER);
    image(gomer02, 0, 0); 
    t -= 1.0;
    rot -= 0.01;
    popMatrix();

    pushMatrix();
    translate (z, h);
    rotate(rot);
    imageMode(CENTER);
    image(gimp, 0, 0); 
    z -= 1.0;
    rot -= 0.01;
    popMatrix();

    pushMatrix();
    translate (w, h);
    imageMode(CENTER);
    image(yamman, 0, 0); 
    w -= 1.0;
    rot -= 0.01;
    popMatrix();

    imageMode (CORNERS);
    image(partial, 0, 0);


    textSize (20);
    fill(255); 
    text("Follow them", 40, 665);
  }



  // END PUPPET PARADE


  // Event 2 | Thump, Thump, Thump
  if (event == 2) {
    name=2;
    if (time > 1500) {
      textSize (25);
      strokeWeight(0);
      text("((thump))", 270, 325);
    }

    if (time > 2000) {
      textSize (35);
      strokeWeight(0);
      text("((thump))", 425, 245);
    }
    if (time > 2500) {
      textSize (45);
      strokeWeight(0);
      text("((thump))", 320, 115);
    }
    if (time > 3000) {
      textSize (20);
      text("wake up", 650, 665); 
      text("ignore", 40, 665);
    }
  }

  // Event 3 | Scratch, Scratch, Scratch
  if (event == 3) {
    name=3;

    if (time > 1500) {
      fill(255);
      textSize (35);
      strokeWeight(0);
      text("((scratch))", 360, 230);
    }

    if (time > 2000) {
      textSize (25);
      strokeWeight(0);
      text("((scratch))", 280, 345);
    }
    if (time > 2500) {
      textSize (50);
      strokeWeight(0);
      text("((scratch))", 775, 525);
    }
    if (time > 4000) {
      textSize (20);
      text("look under the bed", 650, 665); 
      text("ignore", 40, 665);
    }
  }

  //Event 4 // Window - awake
  if (event == 4) {
    name=4;
    if (time > 500) {
      if (f==0) {
        background (#FFE16A);
        pushMatrix();
        translate (x, i);
        imageMode(CENTER);
        image(gimp, 0, 0);
        i -=1.0;
        rot -= 0.01;
        popMatrix();
      } else if (f==1) {
        background (#FFE16A);
        pushMatrix();
        translate (x, i);
        imageMode(CENTER);
        image(yamman, 0, 0);
        i -=1.0;
        rot -= 0.01;
        popMatrix();
      } else if (f==2) {
        background (#FFE16A);
        pushMatrix();
        translate (x, i);
        imageMode(CENTER);
        image(accomplice, 0, 0);
        i -=1.0;
        rot -= 0.01;
        popMatrix();
      } else if (f==3) {
        background (#FFE16A);
        pushMatrix();
        translate (x, i);
        imageMode(CENTER);
        image(skeptic, 0, 0);
        i -=1.0;
        rot -= 0.01;
        popMatrix();
      } else if (f==4) {
        background (#FFE16A);
        pushMatrix();
        translate (x, i);
        imageMode(CENTER);
        image(gomer01, 0, 0);
        i -=1.0;
        rot -= 0.01;
        popMatrix();
      } else if (f==5) {
        background (#FFE16A);
        pushMatrix();
        translate (x, i);
        imageMode(CENTER);
        image(gomer02, 0, 0);
        i -=1.0;
        rot -= 0.01;
        popMatrix();
      }

      imageMode (CORNERS);
      image(blank, 0, 0);
      image(awake, 0, height/3);
    }

    if (time > 2000) {
      textSize (45);
      fill(255);
      strokeWeight(0);
      text("'Let Us In!!!'", 225, 117);
    }

    if (time > 3500) {
      textSize (20);
      fill(255); 
      text("Go to Door", 650, 665); 
      text("Ignore", 40, 665);
    }
  }

  //Event 5 || Floor - sleep
  if (event == 5) {
    name=5;
    if (time > 1000) {
      image(gomer01, 300, 150);
      image(bed, 0, height/3);
      image(gomer02, 710, 250);
      image(gimp, -40, 400);
      image(accomplice, 800, 500);
      image(yamman, 800, 50);
    } 

    if (time > 3000) {
      fill(255);
      textSize (20);
      text("WAKE UP!", 650, 665);
    }
  }

  // Event 6 || Bed - awake

  if (event == 6) {
    name=6;
    if (time > 500) {
      if (f==0) {
        imageMode (CORNERS);
        image(blank, 0, 0);
        image(yammanBed, 0, height/3);
      } else if (f==1) {
        imageMode (CORNERS);
        image(blank, 0, 0);
        image(gimpBed, 0, height/3);
      } else if (f==2) {
        imageMode (CORNERS);
        image(blank, 0, 0);
        image(gomerBed, 0, height/3);
      }
    }


    if (time > 2000) {
      textSize (45);
      fill(255);
      strokeWeight(0);
      text("'get up, lazy'", 225, 117);
    }

    if (time > 3500) {
      textSize (20);
      fill(255); 
      text("Go to Door", 650, 665); 
      text("Ignore", 40, 665);
    }
  }

  //Event 7 || scratch #2

  if (event == 7) {
    name=7;
    if (time > 1500) {
      fill(255);
      textSize (35);
      strokeWeight(0);
      text("((scratch))", 360, 230);
    }

    if (time > 2000) {
      textSize (25);
      strokeWeight(0);
      text("((scratch))", 280, 345);
    }
    if (time > 2500) {
      textSize (50);
      strokeWeight(0);
      text("((scratch))", 775, 525);
    }
    if (time > 4000) {
      textSize (20);
      text("look under the bed", 650, 665); 
      text("ignore", 40, 665);
    }
  }
  // end scratch #2

  //Event 8 || Birthday Party

  if (event == 8) {
    name=8;
    background(party);
    fill(255, 98);
    textSize (100);
    text("surprise!", 312, 96); 
    image(confetti, 0, 0);
    image(confetti, 900, 0);
    pushMatrix();
    translate (u, e);
    imageMode(CENTER);
    image(balloons_01, 0, 0);
    image(balloons_02, 0, 0);
    e -=1.0;
    rot -= 0.01;
    popMatrix();

    pushMatrix();
    translate (u, e);
    imageMode(CENTER);
    image(balloons_01, 200, 0);
    image(balloons_02, 200, 0);
    e -=1.0;
    rot -= 0.01;
    popMatrix();

    pushMatrix();
    translate (o, e);
    imageMode(CENTER);
    image(balloons_02, 0, 0);
    e -=1.0;
    rot -= 0.01;
    popMatrix();

    pushMatrix();
    translate (o, e);
    imageMode(CENTER);
    image(balloons_02, -150, -25);
    e -=1.0;
    rot -= 0.01;
    popMatrix();

    image(skeptic, 200, 400); 
    image(gimp, 850, 400);

    u = u + ( xspeed * xdirection );
    d = d + ( yspeed * ydirection );
    pushMatrix();
    if (u > 400 || u < 30) {
      xdirection *= -1;
    }
    if (d > 100) {
      ydirection *= -.5;
    }

    image(accomplice, u+100, d); 

    image(gomer01, u+350, d); 
    image(gomer02, u+500, d); 
    image(kid, u+650, d+20); 
    image(yamman, u+1000, d+25);
    popMatrix();

    if (time > 2500) {
      fill(255);
      textSize (20);
      text("wait a minute...", 40, 665);
    }
  }
  // End Party

  // Event 9
  if (event == 9) {
    name=9;
    fill(255);
    textSize (50);
    text("Was it all a dream?", 100, 90); 

    if (time > 2000) {
      if (f==0) {
        imageMode (CORNERS);
        image(yammanBed, 0, height/3);
      } else if (f==1) {
        imageMode (CORNERS);
        image(gimpBed, 0, height/3);
      } else if (f==2) {
        imageMode (CORNERS);
        image(gomerBed, 0, height/3);
      }

      if (time > 3000) {
        fill(255);
        textSize (20);
        text("go back to bed", 650, 665);
      }
    }
  }

  // Event 10 - Jiggle
  if (event == 10) {
    name=10;
    background (#FFE16A);
    background(background);
    image(bed, -350, height/3);


    if (time > 2000) {
      textSize (25);
      fill(255);
      strokeWeight(0);
      text("((rattle))", 725, 375);
    } 
    if (time > 3000) {
      textSize (35);
      fill(255);
      strokeWeight(0);
      text("((rattle))", 850, 300);
    }
    if (time > 4000) {
      textSize (45);
      fill(255);
      strokeWeight(0);
      text("((rattle))", 800, 450);
    }
    //Make a decision
    if (time > 5000) {
      textSize (20);
      text("take a peek", 650, 665); 
      text("go back to bed", 40, 665);
    }
  }


  // Event 11 - peek out
  if (event == 11) {
    name=11;
      background (#FFE16A);

    if (f==0) {
      background (#FFE16A);
      pushMatrix();
      translate (c, s);
      imageMode(CENTER);
      image(gimp, 0, 0);
      s -=1.0;
      rot -= 0.01;
      popMatrix();
    } else if (f==1) {
      background (#FFE16A);
      pushMatrix();
      translate (c, s);
      imageMode(CENTER);
      image(yamman, 0, 0);
      s -=1.0;
      rot -= 0.01;
      popMatrix();
    } else if (f==2) {
      background (#FFE16A);
      pushMatrix();
      translate (c, s);
      imageMode(CENTER);
      image(accomplice, 0, 0);
      s -=1.0;
      rot -= 0.01;
      popMatrix();
    } else if (f==3) {
      background (#FFE16A);
      pushMatrix();
      translate (c, s);
      imageMode(CENTER);
      image(skeptic, 0, 0);
      s -=1.0;
      rot -= 0.01;
      popMatrix();
    } else if (f==4) {
      background (#FFE16A);
      pushMatrix();
      translate (c, s);
      imageMode(CENTER);
      image(gomer01, 0, 0);
      s -=1.0;
      rot -= 0.01;
      popMatrix();
    } else if (f==5) {
      background (#FFE16A);
      pushMatrix();
      translate (c, s);
      imageMode(CENTER);
      image(gomer02, 0, 0);
      s -=1.0;
      rot -= 0.01;
      popMatrix();
    }  
    imageMode(CORNERS);
    image(peep, 0, 0);

    if (time > 4000) {
      textSize (20);
      text("answer the door", 650, 665); 
      text("go back to bed", 40, 665);
    }
  }
}
void mousePressed () {
  start = true;
  startTime = millis();
  mouse= mouse+1;

  if (mouseX > 40 && mouseX<190 && mouseY>645 && mouseY<675) {
    //go back to bed rectangle  

    if (name==0 ) {
      background (#FFE16A);
      image(blank, 0, 0);
      image(bed, 0, height/3);
      event=2;
    }

    if (name==1 ) {
      image(party, 0, 0);
      event=8;
    }

    if (name==10) {
      background (#FFE16A);
      image(blank, 0, 0);
      image(bed, 0, height/3);
      event=2;
    }
    if (name==11) {
      background (#FFE16A);
      image(blank, 0, 0);
      image(bed, 0, height/3);
      event=2;
    }


    if (name==2) {
      background (#FFE16A);
      image(blank, 0, 0);
      image(bed, 0, height/3);
      event=3;
    }
    if (name==3) {
      background (#FFE16A);
      image(blank, 0, 0);
      image(bed, 0, height/3);
      event=5;
    }
    if (name==4) {
      background (#FFE16A);
      image(blank, 0, 0);
      image(bed, 0, height/3);
      event=7;
    }
    if (name==7) {
      background (#FFE16A);
      image(blank, 0, 0);
      image(bed, 0, height/3);
      event=5;
    }
    if (name==6) {
      background (#FFE16A);
      image(blank, 0, 0);
      image(bed, 0, height/3);
      event=5;
    }

    if (name==8) {
      background (#FFE16A);
      imageMode (CORNERS);
      image(blank, 0, 0);
      image(awake, 0, height/3);
      event=9;
    }
  }

  if (mouseX > 650 && mouseX<910 && mouseY>645 && mouseY<670)
  {

    if (name==0) {
      event=10;
    }

    if (name==10) {
      event=11;
      r=random(6);
      f=floor(r);
      println (f);
    }
    if (name==11) {
      event=1;
      r=random(6);
      f=floor(r);
      println (f);
    }




    if (name==2) {
      event=4;
      background (#FFE16A);
      image(blank, 0, 0);
      image(awake, 0, height/3);
      r=random(6);
      f=floor(r);
      println (f);
    }

    if (name==4) {
      event=1;  
      r=random(6);
      f=floor(r);
      println (f);
    }

    if (name==6) {
      event=1;
      r=random(6);
      f=floor(r);
      println (f);
    }

    if (name==3) {
      event=6;
      background (#FFE16A);
      image(blank, 0, 0);
      image(bed, 0, height/3);
      r=random(3);
      f=floor(r);
      println (f);
    }

    if (name==7) {
      event=6;
      background (#FFE16A);
      image(blank, 0, 0);
      image(bed, 0, height/3);
      r=random(3);
      f=floor(r);
      println (f);
    }

    if (name==9) {
      background (#FFE16A);
      imageMode (CORNERS);
      image(blank, 0, 0);
      image(awake, 0, height/3);
      r=random(2);
      f=floor(r);
      println (f);
      event=0;
    }
    if (name==5 ) {
      image(party, 0, 0);
      event=8;
    }
  }
}
