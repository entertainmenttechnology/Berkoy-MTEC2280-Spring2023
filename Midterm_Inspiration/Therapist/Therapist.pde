/*
By John 

-E Therapist "Processing Feelings"_

Welcome to your E therapist!

begin at the opening screen
click the couch to begin your session
click on & choose your response to communicate with your e therapist

if things get to be too much click on the Hang in There cat to start over

once you've finished your session you will get a bill payable to me

John C/O Pratt Institute
200 Willoughby Ave.
Brooklyn NY, 11205

click the door handle to exit back to the beginning

thanks!

*/
//used demo on state changes to inform how to construct



PFont font;
PFont font2;
int stage=1;
int amount = 1;


PImage office1;
PImage office0;
PImage check;
PImage plant;
PImage glass;
PImage knob;
PImage couch;
PImage hit1;
PImage hit2;
PImage hit3;

//thank you jun for the help!
float x,y;
float state=0;

float bill;
String s;

void setup(){
 size(1280,720);
 background(255);
 
office1 = loadImage("office4.png");
office0 = loadImage("office2.png");
check = loadImage("check.png");
plant = loadImage("lamp.png");
glass = loadImage("glass2.png");
knob = loadImage("knob.png");
couch = loadImage("couch.png");
hit1 = loadImage("hit4.png");
hit2 = loadImage("hit2.png");
hit3 = loadImage("hit3.png");


 font = createFont("TheLightFont.ttf",26);
 textFont(font);
 
 //thanks jun!!!
 s="$";
 bill = int(random(300));
 
 x=500;
 y=500;
 
 //font = createFont("Signature of the Ancient.ttf",60);
 //textFont(font2);
 
}


void draw(){
  
  background(127);
  
  println(mouseX + " : " + mouseY);
  
  
  if (stage==1){
    //background(255);
    //image(office0,0,0);
    if (mouseX >=690 && mouseX <=1230 && mouseY>=375 && mouseY<=718){
     image(couch,0,0); 
  }  else {
     image(office0,0,0);
     //int payment = random
   
  }
    
    fill(255);
    
    
    
    textAlign(CENTER,CENTER);
//    text("welcome to", width/2, height/2-210);
//    text("''processing feelings''", width/2, height/2-180);
//    text("electronic therapist", width/2, height/2-150);
//    text("click the couch to begin", width/2, height/2+100);
//
    //text("welcome to", 300, 270);
    //text("''processing feelings''", 300, 300);
    //text("electronic therapist", 300, 330);
    //text("click the couch", 1020, 285);
    //text("to begin", 1020, 315);
    text("welcome to", 350, 240);
    text("''processing feelings''", 350, 280);
    text("electronic therapist", 350, 320);
    //text("take a seat", 995, 450);
    //text("to begin", 995, 480);
    text("take a seat", 1100, 330);
    text("to begin", 1100, 370);


} else if (stage==2){
    //background(127);
    //image(office1,0,0);
    //thank you jun!!!!!
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  }else{
    image(office1,0,0);
}
    
    textAlign(CENTER,CENTER);
    fill(255);
    text("hi, it's nice to see you",width/2,height/2-210);
    text("how are you feeling today?",width/2, height/2-180);
    text("i'm doing pretty good",180,519);
    text("",176,549);
    text("not too hot",1087,464);
    text("",1087,494);
    
    
  } else if (stage==3) {
    //background(150);
    //image(office1,0,0);
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
    }else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  }else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  }
    else{
    image(office1,0,0);
}
    
    textAlign(CENTER,CENTER);
    text("that's great to hear",width/2,height/2-210);
    text("you look like you're feeling well",width/2,height/2-180);
    text("any particlar reason things are good?",width/2,height/2-150);
    text("i guess i'm",180,519);
    text("just feeling good about life",180,549);
    text("I don't know,",1087,464);
    text("i'm actually not that great",1087,494);
  } else if (stage==4){
    //background(110);
    //image(office1,0,0);
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
  image(office1,0,0);
}
    text("i'm sorry to hear that...",width/2,height/2-210);
    text("do you want to get some of it off your chest?", width/2,height/2-180);
    text("totally,",180,519);
    text("that would be great",180,549);
    text("i'd rather not...",1087,464);
  } else if (stage==5){
    //background(175);
    //image(office1,0,0);
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
    image(office1,0,0);
}
    text("that's awesome!",width/2,height/2-180);
    text("do you want to expand upon that feeling?",width/2,height/2-150);
    text("ok",180,519);
    text("there's not much to tell",1087,464);
  } else if (stage==6){
    //background(200);
    //image(office1,0,0);
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
  image(office1,0,0);
}
    text("i want you to meditate on",width/2,height/2-210);
    text("how you're feeling and why",width/2,height/2-180);
    text("how does that sound?",width/2,height/2-150);
    text("sounds good",180,519);
    text("",180,549);
    text("meditating is boring",1087,494);
    text("this is bullshit",1087,524);
  } else if (stage==7){
     //image(office1,0,0);
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
  image(office1,0,0);
}
     text("wow.",width/2,height/2-240);
     text("you can say anything you like in here",width/2,height/2-210);
     text("but i don't think that attitude is",width/2,height/2-180);
     text("going to help you",width/2,height/2-150);
     text("you're right... excuse me",180,519);
     text("fuck this ''therapy''",1087,464);
     text("i'm out of here",1087,494);
  } else if (stage==8){
     //image(office1,0,0);
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
  image(office1,0,0);
}
     text("sometimes it's ok to just",width/2,height/2-210);
     text("let things be",width/2,height/2-180);
     text("how about a meditation",width/2,height/2-150);
     text("ok",180,519);
     text("that sounds nice",180,549);
     text("i don't know",1087,464);
     text("my thoughts are getting",1087,494);
     text("dark",1087,524);
  } else if (stage==9){
     //image(office1,0,0);
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
    image(office1,0,0);
}
     text("you're only going to get out of this",width/2,height/2-180);
     text("what you put in. thats how therapy works",width/2,height/2-150);
     text("you're right...",180,519);
     text("how foolish of me",180,549);
     text("i think i'll stick to",1087,464);
     text("whiskey and cigars",1087,494);
     text("thank you very much",1087,524);
  }  else if (stage==10){
     //image(office1,0,0);
    if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
    image(plant,0,0); 
  } else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
    image(glass,0,0);   
  } else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
    image(office1,0,0);
}
     text("it seems like you're under a lot of stress",width/2,height/2-180);
     text("it might help to take a moment and breathe",width/2,height/2-150);
     text("",width/2,height/2-150);
     text("ok, i'll give it a try",180,519);
     text("are you saying i look stressed?",1087,464);
     text("thanks buddy...",1087,494);
  }  else if (stage==11){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
  image(office1,0,0);
}
     text("being hostile and reactionary",width/2,height/2-210);
     text("is not going to help you become the person",width/2,height/2-180);
     text("you want to be",width/2,height/2-150);
     text("wow, i'm sorry",180,519);
     text("it's just my temper...",180,549);
     text("don't act like you know me",1087,464);
     text("",1087,494);
  }  else if (stage==12){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("i think thats enough",width/2,height/2-210);
     text("you're obviously beyond help",width/2,height/2-180);
     text("its time for you to leave",width/2,height/2-150);
     text("are you serious?",180,519);
     text("i thought you",180,549);
     text("were a professional",180,579);
     text("fuck this. fuck you.",1087,464);
     text("i'm out",1087,494);
  }  else if (stage==13){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("i want you to close your eyes",width/2,height/2-210);
     text("think about the sound of the ocean or the forest",width/2,height/2-180);
     text("and drop in to your inner self",width/2,height/2-150);
     text("ok",180,519);
     text("",180,549);
     text("i don't want to close my eyes",1087,464);
     text("",1087,494);
  }  else if (stage==14){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("close your eyes again",width/2,height/2-210);
     text("and relax your tongue",width/2,height/2-180);
     text("let yourself meditate for at least one minute",width/2,height/2-150);
     text("wow",180,519);
     text("i feel more relaxed",180,549);
     text("yeah...",1087,464);
     text("thats not my cup of tea",1087,494);
     text("that whiskey on the other hand...",1087,524);
  }   else if (stage==15){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("alcohol, tobacco and drugs",width/2,height/2-210);
     text("are not roads to self actualization",width/2,height/2-180);
     text("they are distractions from your true self",width/2,height/2-150);
     text("you're right",180,519);
     text("but life is so hard",180,549);
     text("who are you to judge?",1087,464);
     text("get off my back",1087,494);
     text("",1087,524);
  }  else if (stage==16){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("lets try again another time",width/2,height/2-210);
     text("this isn't working for either of us right now",width/2,height/2-180);
     text("i hope you find peace within yourself until then",width/2,height/2-150);
     text("Ok",180,519);
     text("thanks anyway",180,549);
     text("this is useless",1087,464);
     text("ive got better ways to spend",1087,494);
     text("my time and money",1087,524);
  }  else if (stage==17){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("i'm glad to hear that",width/2,height/2-210);
     text("sometimes all we need is a moment",width/2,height/2-180);
     text("it sounds like you feel a little better than when you started",width/2,height/2-150);
     text("i do",180,519);
     text("thanks, i'll be back soon",180,549);
     text("it helped to slow down for a minute",1087,464);
     text("but it's nothing i couldn't",1087,494);
     text("do on my own",1087,524);
  }  else if (stage==18){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("please leave and don't come back",width/2,height/2-210);
     text("your negativity is contagious",width/2,height/2-180);
     text("and i do not want to be infected",width/2,height/2-150);
     text("i'm sorry",180,519);
     text("i'll try to learn from this",180,549);
     text("good riddance",1087,464);
     text("darkness is a part of life",1087,494);
     text("one day you'll learn that",1087,524);
  }  else if (stage==19){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("it's ok, i understand",width/2,height/2-210);
     text("we all get a little verklempt sometimes",width/2,height/2-180);
     text("i can suggest something to do at home to help relax",width/2,height/2-150);
     text("please",180,519);
     text("i could use it",180,549);
     text("are you saying",1087,464);
     text("i looked stressed again?",1087,494);
     text("youve got some nerve",1087,524);
  }  else if (stage==20){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("go home and run yourself a hot bubblebath",width/2,height/2-210);
     text("take a long soak and have some tea",width/2,height/2-180);
     text("get a good nights sleep and see how you feel in the morning",width/2,height/2-150);
     text("wow, that sounds perfect",180,489);
     text("i'm going home to do that now",180,519);
     text("thanks doc",180,549);
     text("i'm not a fan of bubbles",1087,464);
     text("nor baths",1087,494);
     text("i'll just take a xanax",1087,524);
  }  else if (stage==21){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("its your life",width/2,height/2-210);
     text("come back if you need support in the future",width/2,height/2-180);
     text("good luck",width/2,height/2-150);
     text("alright",180,519);
     text("take it easy",180,549);
     text("",1087,464);
     text("good luck to you too",1087,494);
     text("i hope you get a real job someday",1087,524);
  }  else if (stage==22){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("life can be very challenging",width/2,height/2-210);
     text("but it can also be fun and easy",width/2,height/2-180);
     text("if you stay positive anything is possible",width/2,height/2-150);
     text("yeah",180,519);
     text("i needed to hear that",180,549);
     text("i've got a little song for you",1087,464);
     text("''life is short, life is shit,",1087,494);
     text("and soon it will be over!''",1087,524);
  }  else if (stage==23){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("ok, thats enough",width/2,height/2-210);
     text("we're going to end this session",width/2,height/2-180);
     text("and you can take your toxic negativity with you",width/2,height/2-150);
     text("you're right",180,489);
     text("i'll try to tone it down",180,519);
     text("in the future. thanks",180,549);
     text("i will indeed",1087,464);
     text("i love my negativity",1087,494);
     text("thank you very much!",1087,524);
  }  else if (stage==24){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("good, sounds like",width/2,height/2-210);
     text("you've gotten something out of this session",width/2,height/2-180);
     text("have a nice day and see you next time",width/2,height/2-150);
     text("alright, sounds good",180,519);
     text("thanks again",180,549);
     text("",180,579);
     text("i could have read that",1087,464);
     text("on a popsicle stick",1087,494);
     text("i'm not into therapy",1087,524);
  }  else if (stage==25){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("it's ok, sometimes things are hard",width/2,height/2-210);
     text("and it amplifies our feelings",width/2,height/2-180);
     text("can you calm down a bit?",width/2,height/2-150);
     text("yeah",180,519);
     text("i think i can",180,549);
     text("",180,579);
     text("god",1087,464);
     text("this is so lame",1087,494);
     text("i'm over it",1087,524);
  }  else if (stage==26){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("oh? you seemed fine a second ago",width/2,height/2-210);
     text("well whats going on?",width/2,height/2-180);
     text("want to talk about it?",width/2,height/2-150);
     text("maybe, i don't know",180,519);
     text("that theres much to say",180,549);
     text("",180,579);
     text("not really",1087,464);
     text("i'm feeling kind of shut off",1087,494);
     text("from the world",1087,524);
  }  else if (stage==27){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("i understand",width/2,height/2-210);
     text("i think we all feel like that sometimes",width/2,height/2-180);
     text("why not think about something else to clear your head?",width/2,height/2-150);
     text("ok",180,489);
     text("thats a proactive",180,519);
     text("and good idea",180,549);
     text("i don't want to feel better",1087,464);
     text("this is who i am",1087,494);
     text("sometimes i go to dark places",1087,524);
  }  else if (stage==28){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("we all go to dark places sometimes",width/2,height/2-210);
     text("its being willing to come out of it",width/2,height/2-180);
     text("that gives us agency in our emotions",width/2,height/2-150);
     text("you know",180,489);
     text("you're right",180,519);
     text("it's about time i took control",180,549);
     text("agency in our emotions?",1087,464);
     text("i don't have any say in how i feel",1087,494);
     text("if i did i wouldn't feel like this",1087,524);
  }  else if (stage==29){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("you've kind of worked your way",width/2,height/2-210);
     text("into a vicious cycle",width/2,height/2-180);
     text("with that thinking, do you see?",width/2,height/2-150);
     text("oh my god",180,489);
     text("you're right",180,519);
     text("i've got to snap out of it",180,549);
     text("don't tell me how i feel",1087,464);
     text("or how i think",1087,494);
     text("i don't need this",1087,524);
  }  else if (stage==30){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("ok, maybe we should call it a day",width/2,height/2-210);
     text("i don't think we're going to make much headway like this",width/2,height/2-180);
     text("why don't we try again soon, ok?",width/2,height/2-150);
     text("ok, that sounds good",180,489);
     text("i've just got a lot on my plate",180,519);
     text("we'll get somewhere next time",180,549);
     text("yeah, i guess so",1087,464);
     text("i'm not sure about all this hogwash",1087,494);
     text("but i guess i'll try again later",1087,524);
  }  else if (stage==31){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("you don't need to do the exercise",width/2,height/2-210);
     text("but what you get out of this is up to you",width/2,height/2-180);
     text("give it another shot?",width/2,height/2-150);
     text("ok, that sounds good",180,489);
     text("lets get started",180,519);
     text("",180,549);
     text("you know,",1087,464);
     text("i'm not into all this malarkey",1087,494);
     text("what kind of charlatan are you?",1087,524);
  }  else if (stage==32){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("sometimes it's ok to just",width/2,height/2-210);
     text("let things be",width/2,height/2-180);
     text("how about a meditation",width/2,height/2-150);
     text("ok",180,519);
     text("that sounds nice",180,549);
     text("i don't know",1087,464);
     text("my thoughts are getting",1087,494);
     text("dark",1087,524);
  }  else if (stage==33){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("sometimes it's ok to just",width/2,height/2-210);
     text("let things be",width/2,height/2-180);
     text("how about a meditation?",width/2,height/2-150);
     text("ok, that sounds good",180,519);
     text("lets get started",180,549);
     text("",180,549);
     text("i don't know",1087,464);
     text("i'm not feeling great",1087,494);
     text("about this therapy stuff",1087,524);
  }  else if (stage==34){
     //image(office1,0,0);
     if (mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557){
     image(plant,0,0); 
  }  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
     image(glass,0,0);   
  }  else if (mouseX >=48 && mouseX <=215 && mouseY>=10 && mouseY<=258){
    image(hit1,0,0);   
  } else{
     image(office1,0,0);
}
     text("just take a moment",width/2,height/2-210);
     text("and focus on your breathing",width/2,height/2-180);
     text("come back once you've taken 10 deep slow breaths",width/2,height/2-150);
     text("phew",180,489);
     text("that was really calming",180,519);
     text("i'm ready to go forward",180,549);
     text("i'd rather hold my breathe",1087,464);
     text("than focus on",1087,494);
     text("breathing slowly",1087,524);
  }  else if (stage==36){
     //image(office1,0,0);
     if (mouseX >=484 && mouseX <= 791 && mouseY>= 85 && mouseY <= 542){
     image(hit3,0,0); 
  //}  else if (mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619){
  //   image(glass,0,0);   
  }  else{
     image(hit2,0,0);
}
     text("Things get tough but",width/2,height/2+220);
     text("hang in there!",width/2,height/2+260);
     text("lets see if we can get a fresh start",width/2,height/2+300);
     //text("phew",180,489);
     //text("that was really calming",180,519);
     //text("i'm ready to go forward",180,549);
     //text("i'd rather hold my breathe",1087,464);
     //text("than focus on",1087,494);
     //text("breathing slowly",1087,524);
  }else if (stage==35){
     //image(check,0,0); 
     if (mouseX >=309 && mouseX <= 422 && mouseY>= 0 && mouseY <= 113){
     image(knob,0,0); 
  }  else {
     image(check,0,0);
     //int payment = random
   
  }
     //background(127);
     //image(office1,0,0);
     text("thanks for coming in",width/2,height/2-230);
     text("please make sure to pay your bill before you leave",width/2,height/2-190);
     text("todays bill is",width/2,height/2-150);
     //text("see you next time!",273,407);
     //text("(click the door knob to exit)",180,519);
     text("",180,549);
     //amount=(random(1,300));
     
     
     //text(s+Float.toString(bill),1087,464);
     text(s+Float.toString(bill),975,407);
     text("",1087,494);
     text("",1087,524);
  }
}
    
    
    
    
    
 // println(stage);
  
//}

//think about adding in key where when its held down it switches to text and
//an image of therapist or something else that is judging the user really hard
//maybe a few different ones on different keys

//add animated gif or simple animation of therapist office
//movement in bubbles of drink or fireplace or waving therapist hand or something

//void keyPressed(){
//  if (key=='0'){
//    stage=1;
//  } else if (key=='1'){
//    stage=2;
//  } else if (key=='2'){
//    stage=3;
//  } else if (key=='3'){
//    stage=4;
//  } else if (key=='4'){
//    stage=5;
//  } else if (key=='5'){
//    stage=6;
//  } else if (key=='!'){
//    stage=7;
//  }
//  
//}

//Shuhei helped me with getting the ball rolling on mousePressed code

//helpful code from shuhei
//pants = int(random(1,4));
//jacket = int(random(1,4));

//float billBill = random(1, 300);
 


//void bill(){
//  text("$1",x,y);
//  text("$5",x,y);
//  text("$10",x,y);
//  text("$20",x,y);
//  text("$25",x,y);
//  text("$30",x,y);
//  text("$40",x,y);
//  text("$50",x,y);
//    text("$75",x,y);
//    text("100",x,y);
//    text("$125",x,y);
//    text("$150",x,y);
//    text("$175",x,y);
//    text("$180",x,y);
//    text("$185",x,y);
//    text("$200",x,y);
//    text("$210",x,y);
//    text("$215",x,y);
//    text("$225",x,y);
//    text("$230",x,y);
//    text("$245",x,y);
//    text("$250",x,y);
//    text("$265",x,y);
//    text("$275",x,y);
//    text("$280",x,y);
//    text("$285",x,y);
//    text("$300",x,y);
  
//}


void mousePressed() {
  if (stage <=1 && mouseX >=690 && mouseX <=1230 && mouseY>=375 && mouseY<=718) {
    stage = 2;
  } else if (stage ==2 && mouseX >=97 && mouseX <=278 && mouseY>=376 && mouseY<=557) {
    stage = 3;
  } else if (stage ==2 && mouseX >=1053 && mouseX <=1158 && mouseY>=540 && mouseY<=619) {
    stage = 4;
  } else if (stage ==3 && mouseX >=97 && mouseX <=278 && mouseY>=376 && mouseY<=557) {
    stage = 5;
  } else if (stage ==5 && mouseX >=97 && mouseX <=278 && mouseY>=376 && mouseY<=557) {
    stage = 6;
  } else if (stage ==6 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 7;
  } else if (stage ==4 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 9;
  } else if (stage ==4 && mouseX >=97 && mouseX <=278 && mouseY>=376 && mouseY<=557) {
    stage = 10;
  } else if (stage ==9 && mouseX >=97 && mouseX <=278 && mouseY>=376 && mouseY<=557) {
    stage = 10;
  } else if (stage ==10 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 11;
  } else if (stage ==11 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 12;
  } else if (stage ==10 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 13;
  } else if (stage ==13 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 14;
  } else if (stage ==14 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 15;
  } else if (stage ==9 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 15;
  }  else if (stage ==15 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 11;
  } else if (stage ==6 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 13;
  } else if (stage ==12 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 16;
  } else if (stage ==14 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 17;
  } else if (stage ==7 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 18;
  } else if (stage ==11 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 19;
  } else if (stage ==19 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 20;
  } else if (stage ==20 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 21;
  } else if (stage ==19 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 16;
  } else if (stage ==15 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 22;
  } else if (stage ==22 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 23;
  } else if (stage ==22 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 24;
  } else if (stage ==7 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 25;
  } else if (stage ==3 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 26;
  } else if (stage ==26 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 27;
  } else if (stage ==27 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 28;
  } else if (stage ==28 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 29;
  } else if (stage ==29 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 30;
  } else if (stage ==25 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 21;
  } else if (stage ==25 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 30;
  } else if (stage ==13 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 31;
  } else if (stage ==31 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 14;
  } else if (stage ==31 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 11;
  } else if (stage ==5 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 33;
  } else if (stage ==26 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 33;
  } else if (stage ==33 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 13;
  } else if (stage ==33 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 9;
  } else if (stage ==5 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 33;
  } else if (stage ==27 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 34;
  } else if (stage ==28 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 34;
  } else if (stage ==29 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 34;
  } else if (stage ==34 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 30;
  } else if (stage ==34 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 22;
  } else if (stage ==17 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 35;
  } else if (stage ==17 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 35;
  } else if (stage ==24 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 35;
  } else if (stage ==24 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 35;
  } else if (stage ==22 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 35;
  } else if (stage ==20 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 35;
  } else if (stage ==21 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 35;
  } else if (stage ==21 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 35;
  } else if (stage ==12 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 35;
  } else if (stage ==16 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 35;
  } else if (stage ==16 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 35;
  } else if (stage ==30 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 35;
  } else if (stage ==30 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 35;
  } else if (stage ==23 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 35;
  } else if (stage ==23 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 35;
  } else if (stage ==18 && mouseX >=97 && mouseX <= 278 && mouseY>= 376 && mouseY <= 557) {
    stage = 35;
  } else if (stage ==18 && mouseX >=1053 && mouseX <= 1158 && mouseY>= 540 && mouseY <= 619) {
    stage = 35;
  } else if (stage >=2 && stage <=34 && mouseX >=48 && mouseX <= 215 && mouseY>= 10 && mouseY <= 258) {
    stage = 36;
  }else if (stage ==36 && mouseX >=484 && mouseX <= 791 && mouseY>= 85 && mouseY <= 542) {
    stage = 2;
  }else if (stage ==35 && mouseX >=309 && mouseX <= 422 && mouseY>= 0 && mouseY <= 113) {
    //thanks jun!!!
    stage = 1;bill = int(random(1,300));
  } else if (stage ==35 && mouseX >=743 && mouseX <= 1089 && mouseY>= 470 && mouseY <= 573){
    
  }
}
