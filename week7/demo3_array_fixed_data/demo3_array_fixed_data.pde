//demo on arrays with fixed data
//store a list of candy bar numbers + a list of feelings

//dataType[] nameOfArray = new dataType[numberofPositions];
//dataType[] nameOfArray= {};


// creates an integer array called candy and creates 5 positions
int[] candy= new int[5];  

// creates a String array called feelings and initializes array elements in one sequence
String[] feelings= {"mad", "so happy", "excited", "delirious"};  

int positionCandy= 0; //tracking position in candy array
int positionFeelings=0; //tracking position in feelings array


void setup() {
  size(700, 700);
  fill(255, 100, 0);

  //initializing array elements individually
  candy[0]= 81; //the first array element equals 81
  candy[1]= 0;  // the second array element equals 0
  candy[2]= 3;
  candy[3]= 252;
  candy[4]= 8;

  textSize(44);
  textAlign(CENTER, CENTER);
}


void draw() {
  background (0);
  text ("I have " + candy[positionCandy] + " candy bars", width/2, height/2);
  text ("and I am " + feelings[positionFeelings] + ".", width/2, height/2 + 50);

  //println (candy[0]);
  //println (candy[1]);
  //println (feelings[2]);
  
  println ("positionCandy: " + positionCandy);
  println ("positionFeelings: " + positionFeelings);
}

void mousePressed() {
  if (positionCandy == candy.length-1) { //if last array position
    positionCandy=0;  //return to first array position
  } else {
    positionCandy++;  //otherwise move forward a single position
  }
  positionFeelings= int(random(0, feelings.length));  //return a random number between 0 and array length
}
