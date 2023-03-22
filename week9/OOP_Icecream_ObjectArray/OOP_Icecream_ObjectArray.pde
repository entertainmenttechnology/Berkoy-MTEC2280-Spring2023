
//from demo on OOP and arrays
//creates array of icecream objects with random x and y positions and fixed diameter of 65
//adds in randomized ice cream color from previous Icecream class example

//declare object array 
Icecream[] icecreams= new Icecream[100];

void setup() {
  size (500, 500);
  //initialize objects by calling the constructor with a for loop
  for (int i=0; i<icecreams.length; i++){
    icecreams[i]= new Icecream(int(random(width)), int (random(-200, height+200)), 65, int (random(255)), int (random(255)), int (random(255)));
  }
}

void draw() {
  background(255);
  //call methods on the objects 
  //the for loop increments through each object in the array
  for(int i=0; i<icecreams.length; i++){
  icecreams[i].display(); 
  icecreams[i].fall();
  icecreams[i].grow();
  }
}
