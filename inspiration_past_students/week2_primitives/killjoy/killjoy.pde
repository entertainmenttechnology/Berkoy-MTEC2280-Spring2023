//Cindy Mei
//26.8.2020
//Killjoy(<-- name of bunny)'s Lovely Face

void setup() {
  size(1080, 720); //sets canvas size to 1080x720
  background(225, 172, 232);
}

void draw () {
  stroke(255);
  strokeJoin(ROUND);
  strokeWeight(35);
  ellipse(540, 500, 575, 350); //head
  quad(185, 140, 275, 75, 375, 400, 375, 425); //left ear
  triangle(185, 140, 275, 75, 185, 25);
  quad(700, 400, 875, 200, 925, 225, 700, 425); //right ear
  ellipse(915, 385, 100, 325);
  stroke(0);
  strokeWeight(5);
  circle(700, 475, 125); //button eye
  stroke(150);
  strokeWeight(3);
  circle(700, 475, 100);
  circle(685, 460, 15);
  circle(715, 460, 15);
  circle(685, 490, 15);
  circle(715, 490, 15);
  triangle(520, 600, 560, 600, 540, 615);
  stroke(252, 48, 3);
  strokeWeight(50);
  strokeCap(MITER);
  line(350, 525, 450, 425); //left eye
  line(350, 425, 450, 525);
}
