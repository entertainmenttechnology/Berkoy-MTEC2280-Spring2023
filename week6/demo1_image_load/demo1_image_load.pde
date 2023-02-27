/*
//////////////////////////////////////////////////
 Demo: working with image assets using PImage.
 //////////////////////////////////////////////////
 
 
 Place image assets into "data" folder.
 Place data folder inside sketch's folder.
 
 For reference: https://processing.org/reference/PImage.html
 */


//Create a PImage object to store image
PImage cupcake;  //Creates a PImage object called cupcake


void setup() {
  size (500, 500);
  background (255);
  imageMode(CENTER); //draws images from center point

  //Assign image to object using loadImage() method
  cupcake= loadImage("cupcake.png");
}  

void draw() {
  background(255);  

  //display image with image() method
  image (cupcake, width/2, height/2); 
  //use .width and .height methods to call up size of image object
  image (cupcake, width/3, height/2, cupcake.width/2, cupcake.height/2); 
}
