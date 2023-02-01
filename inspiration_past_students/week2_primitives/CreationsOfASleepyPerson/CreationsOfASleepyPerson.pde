//"Creations Of A Sleepy Person" by David Calixto

size(1080, 720);
background(0,255,255);

//circles
strokeWeight(5);
circle(540, 180, 100);

strokeWeight(4);
circle(540, 270, 80);

strokeWeight(3);
circle(540, 340, 60);

strokeWeight(2);
circle(540, 390, 40);

strokeWeight(1);
circle(540, 420, 20);

strokeWeight(0);
circle(540, 435, 10);

strokeWeight(10);
stroke(0);
fill(255,0,100);
quad(720, 360, 900, 540, 720, 720, 540, 540);

strokeWeight(5);
stroke(0);
fill(255);
line(540,540, 900, 540);

//Box
fill(255);
strokeWeight(20);
rect(100, 300, 295, 100, 20);
//H
line(125,325, 125, 375);
line(125,350, 150, 350);
line(150,325, 150, 375);



//E

line(175,325, 175, 375);
line(175,350, 200, 350);
line(175,325, 200, 325);
line(175,375, 200, 375);

//L

line(225,325, 225, 375);
line(225,375, 250, 375);

//Second L

line(275,325, 275, 375);
line(275,375, 300, 375);

//O
//strokeWeight(10);
ellipseMode(CENTER);
ellipse(345, 350, 50, 50);
