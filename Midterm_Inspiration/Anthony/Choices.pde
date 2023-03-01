String choices = "firstrun";
String wrong = "wait";
String right = "wait";
int forward = 0;

void keyPressed (){
  
 if (choices == "firstrun"){ 
  if(key == ENTER || key == RETURN && game == "start"){
    game = "stage1";
    println(game);
    } 
    
        if (game == "stage1" && key == 'f' || key == 'F'){
         background(0);
         right = "correct";
         println(chances);
      } else if (game == "stage1" && key == 'a'){
          background(0);
          wrong = "wrong";
          println(chances);
      }
      
           if (game == "stage2" && key == 'l'){
         background(0);
         right = "correct";
         

         println(chances);
      } else if (game == "stage2" && key == 'i'){
          background(0);
          wrong = "wrong";
          println(chances);
      }
      
       if (game == "stage3" && key == 'd'){
         background(0);
         right = "correct";
           println(chances);
      } else if (game == "stage3" && key == 'e'){
          background(0);
          wrong = "wrong";
          
           println(chances);
      }
      
      else if (game == "end" && key == 's' || key == 'S'){
        forward = 0;
        state = "pregame";
        game = "start";
      }
  }
}
  

void correct(){
 background(0);
 image(Popup3, 25, 150);
 text("Ughh.. you got it right.. moving on", width/2, height/2);
 text("Press 'B' to go forward", width/2, height/2 + 50);
 if (key == 'b' || key == 'B'){
     forward = forward + 1;
     if (forward == 0){
       game = "pregame";
     }
      else if( forward == 1){
       game = "stage2";
     } else if (forward == 2){
       game = "stage3";
     } else if (forward == 3){
       game = "end";
     }
     right = "wait";
 }

}

void incorrect(){
  chances = chances - 1;
  background(0);
  image(popup2, 25, 150);
  text("Wrong, maybe next time (hehehe)", width/2, height/2);
  text ("Press 'B' to go forward", width/2 , height/2 + 50);
   if (key == 'b' || key == 'B'){
       forward = forward + 1;
           if( forward == 1){
             game = "stage2";
           } else if (forward == 2){
             game = "stage3";
           } else if (forward == 3){
             game = "end";
           }
           wrong = "wait";
      }
}
