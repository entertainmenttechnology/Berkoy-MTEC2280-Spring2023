//Kratos by Joel


size(1080,720);
background(0, 102, 720);

fill(255); //Head
ellipse(245, 150, 250, 250);

fill(255, 255, 255); //Left Ear
triangle(120, 112, 91, 130, 125, 190);

stroke(255, 0, 0); //Red Tattoo
strokeWeight(40);
strokeCap(ROUND);
fill(255, 0, 0);
line(275, 46, 270, 117);

stroke(255, 0, 0); //Bottom red Tattoo
strokeWeight(40);
strokeCap(ROUND);
fill(255, 0, 0);
line(275, 125, 310, 169);

fill(255, 255, 255); //Right Ear 
strokeWeight(0);
triangle(360, 200, 370, 115, 400, 135);

fill(0, 0, 0); //Beard
triangle(370, 190, 235, 422, 122, 190);

fill(0, 0, 0); //Right Eye
ellipse(280, 115, 60, 45);

fill(0, 0, 0); //Left Eye
ellipse(195, 115, 60, 45);

fill(255); //Left Cheeks
triangle(175, 225, 140, 190, 220, 190);

fill(255); //Right Cheeks
triangle(320, 230, 280, 190, 350, 190);

fill(255); //Nose
triangle(250, 200, 275, 190, 220, 190);

fill(255); //Mouth
square(230, 220, 35);

stroke(0, 0, 0); //Left Eyebrow
strokeWeight(20);
strokeCap(SQUARE);
fill(0, 0, 0);
line(170, 76, 225, 117);

stroke(0, 0, 0); //Right Eyebrow
strokeWeight(20);
strokeCap(SQUARE);
fill(0, 0, 0);
line(310, 76, 250, 117);

fill(192, 192, 192);
strokeWeight(0);
quad(246, 390, 340, 230, 310, 250, 290, 230);

    
fill(255, 255, 255); //Left Eye White
ellipse(195, 115, 25, 15);
  
fill(255, 255, 255); //Right Eye
ellipse(280, 115, 25, 15);

fill(255, 0, 0);
ellipse(645, 350, 450, 450);
