//Walking down the street by Shequana Garnett
size(1080,720);
background(102, 0, 0);
noStroke();
//C_bg1
fill(0,0,0,50);
circle(520,375,600);
//C_bg2
fill(0,0,0,50);
circle(520,375,700);
//C_bg3
fill(0,0,0,50);
circle(520,375,800);
//C_bg4
fill(233, 222, 255,50);
circle(520,375,900);
//tri left
strokeWeight(10);
stroke(255, 54, 158);
fill(94, 198, 230);
triangle(0,720,0,520,720,0);
//face
fill(0,0,0,80);
circle(520,375,500);
//tri right (left/right,up/down) (left,top,right)
strokeWeight(10);
fill(94, 198, 230);
triangle(700,700,520,0,720,0);
//left eye
fill(171, 194, 174);
ellipse(390,305,200,100);
circle(390,305,90);
strokeWeight(10);
//right eye
fill(171, 194, 174);
ellipse(650,305,200,100);
circle(650,305,90);
//circles/people
fill(251, 255, 0);
strokeWeight(30);
//left up circle
circle(210,100,300);
//bottom right circle
circle(910,500,300);
//top right circle
circle(910,50,200);
