/*
//////////////////////////////////////////////////
 Demo3: working with image assets using PImage.
 Adds mouse response and second image. 
 //////////////////////////////////////////////////
 
 Place image assets into "data" folder.
 Place data folder inside sketch's folder.
 
 For reference: https://processing.org/reference/PImage.html
 */


//Create a PImage object to store image
PImage cupcake;  //Creates a PImage object called cupcake
PImage mouth;  //Creates another PImage object called mouth

//Creates variables for text animation
float opacity=0;
float fade = 1;
//Creates variable for cupcake animation
float fall=0;

void setup() {
  size (500, 500);
  background (255);
  imageMode(CENTER); //draws images from center point
  textAlign(CENTER);  //aligns text
  textSize(88);  //sets size of text


  //Assign image to object using loadImage() method
  cupcake= loadImage("cupcake.png");
  mouth= loadImage ("mouth.png");
}  

void draw() {
  background(255);  

  //text display and animation
  fill(opacity);
  text ("YUM", width/2, height/2 - 50);  //displays text
  opacity= opacity+fade;
  if (opacity> 255 || opacity< 0) {
    fade= -fade;
  }

  //display image with image() method
  image (cupcake, width/2, height/2 +50);

  if (mousePressed) {
    background(255);
    image (mouth, width/2, height/2);
    image (cupcake, width/2, fall);
    if (fall<height/2) {
      fall++;
    }
  } else {
    fall=0;
}

println ("opacity: " + opacity);
println ("fade: " + fade);
println ("fall: " + fall);
}
