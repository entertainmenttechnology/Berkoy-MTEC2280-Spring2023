//demo for simple game using 3 game states: pregame, game, and game over


String state= "pregame"; //storing our states as Strings 

int ellipseY=0; //y value of ellipse

void setup() {
  size (500, 500);
  textAlign(CENTER);
  textSize(36);
}


void draw() {
  if (state=="pregame") {
    pregame();
  } else if (state=="game") {
    game();
  } else if (state=="game over") {
    gameover();
  }
  println(state);
}

//triggers different states depending on which state already in
void mousePressed() {
  if (state== "pregame") {
    state="game";
  } else if (state=="game over") {
    state= "pregame";
  }
}

void pregame() {
  background(0);
  text("click to start the game", width/2, height/2);
}

void game() {
  background(0, 0, 255);
  text("what a fun game.", width/2, height/2);
  ellipse(mouseX, ellipseY, 100, 100);
  ellipseY++;
  //when ellipse reaches bottom of screen the game is over
  if (ellipseY>height+50) { 
    state="game over";
    ellipseY=0; //reset ellipseY value
  }
}

void gameover() {
  background(255, 0, 0);
  text("everyone loses.", width/2, height/2);
  text("click to play again.", width/2, height/2 + 50);
}
