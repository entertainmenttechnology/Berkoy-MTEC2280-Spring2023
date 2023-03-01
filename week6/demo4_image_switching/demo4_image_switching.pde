/*
//////////////////////////////////////////////////
 Demo: working with image assets using PImage.
 Switching between 2 images while using a 3rd PImage object as placeholder.
 
 Press '1' and '2' key to switch between images.
 //////////////////////////////////////////////////
 
 
 Place image assets into "data" folder.
 Place data folder inside sketch's folder.
 
 For reference: https://processing.org/reference/PImage.html
 */


//Create a PImage object to store image
PImage cupcake;  //Creates a PImage object called cupcake
PImage donut; //Creates a PImage object called donut
PImage dessert; //Creates a PImage object called dessert

void setup() {
  size (500, 500);
  background (255);
  imageMode(CENTER); //draws images from center point

  //Assign image to object using loadImage() method
  cupcake= loadImage("cupcake.png");
  donut= loadImage("donut.png");
  dessert= cupcake; //assign cupcake image to dessert
}  

void draw() {
  background(255);  

  //display image with image() method
  image (dessert, width/2, height/2);
}

void keyPressed() {
  if (key== '1') {
    dessert= cupcake;
  } else if (key== '2') {
    dessert= donut;
  }
}
