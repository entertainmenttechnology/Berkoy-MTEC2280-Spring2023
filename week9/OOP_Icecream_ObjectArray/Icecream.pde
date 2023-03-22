class Icecream {
  //**instance variables**
  int x, y;  //position
  int diameter;  //ice cream width
  int r, g, b;  //color

  //**constructor**
  Icecream(int tempX, int tempY, int tempDiameter, int tempR, int tempG, int tempB) {
   
    x= tempX;
    y= tempY;
    diameter= tempDiameter;
    r= tempR;
    g= tempG;
    b= tempB;
  }

  //**methods**
  void display() {
    //cone
    fill(170, 120, 35); //brown cone color 
    triangle(x, y, x+50, y, x+25, y+100);
    //ice cream
    fill (r, g, b);
    ellipse(x+25, y, diameter, diameter);
  } 

  void fall() {
    if (y>height+100) {
      y=-100;
    } else {
      y++;
    }
  }


  void grow() {
    diameter=constrain(diameter, 0, width);
    if (keyPressed) {
      if (key== '1') {
        diameter++;
      } else if (key=='2') {
        diameter--;
      }
    }
  }
}
