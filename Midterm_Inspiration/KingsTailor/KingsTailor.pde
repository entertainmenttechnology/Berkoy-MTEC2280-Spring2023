/* 
 Title: King's Tailor
 
 by Shuhei
 
 Select a jacke and pants to activate the images. 
 */

PImage img_Stage01;
PImage img_Head;
PImage img_Body;
PImage img_Jacket_01;
PImage img_Jacket_02;
PImage img_Jacket_03;
PImage img_Jacket_04;
PImage img_Jacket_05;
PImage img_Jacket_06;
PImage img_Jacket_07;
PImage img_Jacket_08;
PImage img_Pants_01;
PImage img_Pants_02;
PImage img_Pants_03;
PImage img_Pants_04;
PImage img_Pants_05;
PImage img_Pants_06;
PImage img_Pants_07;
PImage img_Pants_08;
PImage img_Riot_01;
PImage img_Riot_01B;
PImage img_Riot_02;
PImage img_Riot_03;
PImage img_Riot_04;
PImage img_Dragon_01;
PImage img_Dragon_02;
PImage img_Dragon_03;
PImage img_HB_01;
PImage img_Painter_01;
PImage img_Painter_02;
PImage img_Paint_01;
PImage img_Paint_02;
PImage img_Paint_03;
PImage img_Paint_04;
PImage img_Donkey_01;
PImage img_Guitar_01;
PImage img_Jester_01;
PImage img_Jester_02;
PImage img_Crowd_01;
PImage img_Snow_01;
PImage img_Blue_01;
PImage img_Mask_01;
PImage img_Fground_01;
PImage img_Restart_01;
PImage img_OP_01;
PImage img_End_01;
PImage img_Sword_01;
String state = "Jacket_01";
String stateP = "Pants_01";
String stateR = "Riot_01";

String stateGame = "OP";
int stateHB = 0;
int statePaint = 0;
int Gspeed = -1500;
int Gspeed2 = 0;
int Dslide = 350;
int Dfire = 0;
int Guitarslide = -720;
int Jesterskate = -300;
int Crowdjamp = 720;
int Pslide = 350;
int Pslide2 = 0;

int pants;
int jacket;

int stateEND00 = 0;
int stateEND01 = 0;
int stateEND02 = 0;
int stateEND03 = 0;
int stateEND04 = 0;
int stateEND05 = 0;
int stateEND06 = 0;
int stateEND07 = 0;
int stateEND08 = 0;
int stateEND0F = 0;

void setup() {
  size(1280, 720);
  img_Stage01 = loadImage("_King_Stage_01.png");
  img_Head = loadImage("_King_Head_01.png");
  img_Body = loadImage("_King_Body_01.png");
  img_Jacket_01 = loadImage("_King_Jacket_01.png");
  img_Jacket_02 = loadImage("_King_Jacket_02.png");
  img_Jacket_03 = loadImage("_King_Jacket_03.png");
  img_Jacket_04 = loadImage("_King_Jacket_04.png");
  img_Jacket_05 = loadImage("_King_Jacket_05.png");
  img_Jacket_06 = loadImage("_King_Jacket_06.png");
  img_Jacket_07 = loadImage("_King_Jacket_07.png");
  img_Jacket_08 = loadImage("_King_Jacket_08.png");
  img_Pants_01 = loadImage("_King_Pants_01.png");
  img_Pants_02 = loadImage("_King_Pants_02.png");
  img_Pants_03 = loadImage("_King_Pants_03.png");
  img_Pants_04 = loadImage("_King_Pants_04.png");
  img_Pants_05 = loadImage("_King_Pants_05.png");
  img_Pants_06 = loadImage("_King_Pants_06.png");
  img_Pants_07 = loadImage("_King_Pants_07.png");
  img_Pants_08 = loadImage("_King_Pants_08.png");
  img_Riot_01 = loadImage("_King_Riot_01.png");
  img_Riot_01B = loadImage("_King_Riot_01_B.png");
  img_Riot_02 = loadImage("_King_Riot_02.png");
  img_Riot_03 = loadImage("_King_Riot_03.png");
  img_Riot_04 = loadImage("_King_Riot_04.png");
  img_Dragon_01 = loadImage("_King_Dragon_01.png");
  img_Dragon_02 = loadImage("_King_Dragon_02.png");
  img_Dragon_03 = loadImage("_King_Dragon_03.png");
  img_HB_01 = loadImage("_King_HB_01.png");
  img_Painter_01 = loadImage("_King_Painter_01.png");
  img_Painter_02 = loadImage("_King_Painter_02.png");
  img_Paint_01 = loadImage("_King_Paint_01.png");
  img_Paint_02 = loadImage("_King_Paint_02.png");
  img_Paint_03 = loadImage("_King_Paint_03.png");
  img_Paint_04 = loadImage("_King_Paint_04.png");
  img_Donkey_01 = loadImage("_King_Donkey_01.png");
  img_Guitar_01 = loadImage("_King_Guitar_01.png");
  img_Jester_01 = loadImage("_King_Jester_01.png");
  img_Jester_02 = loadImage("_King_Jester_02.png");
  img_Fground_01 = loadImage("_King_Foreground.png");
  img_Crowd_01 = loadImage("_King_Crowd_01.png");
  img_Snow_01 = loadImage("_King_Snow_01.png");
  img_Blue_01 = loadImage("_King_Blue_01.png");
  img_Mask_01 = loadImage("_King_Mask_01.png");
  img_Restart_01 = loadImage("_King_Restart_01.png");
  img_OP_01 = loadImage("_King_OP_01.png");
  img_End_01 = loadImage("_King_End_01.png");
  img_Sword_01 = loadImage("_King_Sword_01.png");
}

void draw() {

  if (stateGame == "OP") {
    background(201, 203, 122);
    image(img_Stage01, 0, 0);
    image(img_Body, 0, 0);
    //image(img_Riot_01, 0, 0);
    image(img_OP_01, 0, 0);
  }

  if (stateGame == "pregame") {
    background(201, 203, 122);
    image(img_Stage01, 0, 0);
    image(img_Body, 0, 0);
    image(img_Riot_01, 0, 0);

    //Pants
    if (stateP == "Pants_01") {
      image(img_Pants_01, 0, 0);
    } else if (stateP == "Pants_02") {
      image(img_Pants_02, 0, 0);
    } else if (stateP == "Pants_03") {
      image(img_Pants_03, 0, 0);
    } else if (stateP == "Pants_04") {
      image(img_Pants_04, 0, 0);
    } else if (stateP == "Pants_05") {
      image(img_Pants_05, 0, 0);
    } else if (stateP == "Pants_06") {
      image(img_Pants_06, 0, 0);
    } else if (stateP == "Pants_07") {
      image(img_Pants_07, 0, 0);
    } else if (stateP == "Pants_08") {
      image(img_Pants_08, 0, 0);
    }

    //Jacket
    if (state == "Jacket_01") {
      image(img_Jacket_01, 0, 0);
    } else if (state == "Jacket_02") {
      image(img_Jacket_02, 0, 0);
    } else if (state == "Jacket_03") {
      image(img_Jacket_03, 0, 0);
    } else if (state == "Jacket_04") {
      image(img_Jacket_04, 0, 0);
    } else if (state == "Jacket_05") {
      image(img_Jacket_05, 0, 0);
    } else if (state == "Jacket_06") {
      image(img_Jacket_06, 0, 0);
    } else if (state == "Jacket_07") {
      image(img_Jacket_07, 0, 0);
    } else if (state == "Jacket_08") {
      image(img_Jacket_08, 0, 0);
    }


    image(img_Head, 0, 0);

    //Dragon
    if (state == "Jacket_04" && stateP == "Pants_04" && Dslide<=350 && Dslide>=0) {
      Dslide = Dslide -3;
      image(img_Dragon_01, Dslide, 0);
      stateEND01 = 1;
    } else if (state == "Jacket_04" && stateP == "Pants_04" && Dslide<=0) {
      image(img_Dragon_01, 0, 0);
      Dfire = Dfire -4;
      image(img_Dragon_02, Dfire, 0);
      image(img_HB_01, 0, 0);
    } else {
      Dslide = 350;
      Dfire = 0;
    }
    if (Dslide<=0 && stateHB==1) {
      image(img_Dragon_03, 0, 0);
      image(img_Riot_01B, 0, 0);
      image(img_HB_01, 0, 0);
    } else {
      stateHB=0;
    }
    //Paint
    if (state == "Jacket_03" && stateP == "Pants_03" && Pslide<=350 && Pslide>=0) {
      Pslide = Pslide -3;
      image(img_Paint_01, Pslide, 0);
      image(img_Painter_01, Pslide, 0);
      image(img_Fground_01, 0, 0);
      image(img_Riot_01B, 0, 0);
      stateEND02 = 1;
    } else if (state == "Jacket_03" && stateP == "Pants_03" && Pslide<=0) {
      image(img_Paint_01, 0, 0);
      image(img_Painter_01, 0, 0);
      image(img_Fground_01, 0, 0);
      image(img_Riot_01B, 0, 0);
      image(img_Painter_02, 0, 0);
    } else {
      Pslide = 350;
    }
    if (Pslide<=0 && statePaint==1) {
      image(img_Paint_02, 0, 0);
      image(img_Painter_01, 0, 0);
      image(img_Fground_01, 0, 0);
      image(img_Riot_01B, 0, 0);
      image(img_Painter_02, 0, 0);
    } else if (Pslide<=0 && statePaint==2) {
      image(img_Paint_03, 0, 0);
      image(img_Painter_01, 0, 0);
      image(img_Fground_01, 0, 0);
      image(img_Riot_01B, 0, 0);
      image(img_Painter_02, 0, 0);
    } else if (Pslide<=0 && statePaint==3) {
      image(img_Paint_04, 0, 0);
      image(img_Painter_01, 0, 0);
      image(img_Fground_01, 0, 0);
      image(img_Riot_01B, 0, 0);
      image(img_Painter_02, 0, 0);
    } else {
      statePaint=0;
    }

    //Guitar
    if (state == "Jacket_06" && stateP == "Pants_06" && Guitarslide<=0) {
      Guitarslide = Guitarslide +6;
      image(img_Guitar_01, 0, Guitarslide);
      stateEND03 = 1;
    } else if (state == "Jacket_06" && stateP == "Pants_06" && Guitarslide>=0) {
      image(img_Guitar_01, 0, 0);
    } else {
      Guitarslide = -720;
    }

    //Jester
    if (state == "Jacket_02" && stateP == "Pants_02" && Jesterskate<=1280) {
      image(img_Jester_02, 0, 0);
      Jesterskate = Jesterskate + 5;
      image(img_Jester_01, Jesterskate, 0);
      image(img_Fground_01, 0, 0);
      stateEND04 = 1;
    } else if (state == "Jacket_02" && stateP == "Pants_02" && Jesterskate>=1280) {
      image(img_Jester_02, 0, 0);
      Jesterskate = -300;
    } else {
      Jesterskate = -300;
    }
    if (state == "Jacket_02" && stateP == "Pants_02" && Crowdjamp>=0) {
      Crowdjamp = Crowdjamp -7;
      image(img_Crowd_01, 0, Crowdjamp);
      image(img_Riot_01B, 0, 0);
    } else if (state == "Jacket_02" && stateP == "Pants_02" && Crowdjamp<=0) {
      image(img_Crowd_01, 0, 0);
      image(img_Riot_01B, 0, 0);
    } else {
      Crowdjamp = 720;
    }

    //Donkey
    if (state == "Jacket_05" && stateP == "Pants_05") {
      image(img_Donkey_01, 0, 0);
      stateEND05 = 1;
    }

    //Snow
    if (state == "Jacket_07" && stateP == "Pants_07") {
      image(img_Snow_01, 0, 0);
      image(img_Riot_01B, 0, 0);
      stateEND06 = 1;
    }
    //blue
    if (state == "Jacket_07" && stateP == "Pants_05") {
      image(img_Blue_01, 0, 0);
      image(img_Snow_01, 0, 0);
      image(img_Riot_01B, 0, 0);
      stateEND07 = 1;
    }
    //Mask
    if (state == "Jacket_08" && stateP == "Pants_08") {
      image(img_Mask_01, 0, 0);
      stateEND08 = 1;
    }
    //END
    if (stateEND01 >= 1 && stateEND02 >= 1 && stateEND03 >= 1 && stateEND04 >= 1 && stateEND05 >= 1 && stateEND06 >= 1 && stateEND07 >= 1 && stateEND08 >= 1) {
      image(img_Sword_01, 0, 0);
      stateEND00=1;
    }
    if (stateEND0F>=1) {
      image(img_End_01, 0, 0);
    }
  }

  //Riot
  if (stateGame == "gameover" && stateR == "Riot_02") {
    image(img_Riot_04, 0, 0);
    image(img_Body, 0, 0);
    image(img_Pants_01, 0, 0);
    image(img_Jacket_01, 0, 0);   
    image(img_Head, 0, 0);
    Gspeed = Gspeed + 20;
    image(img_Riot_02, 0, Gspeed);
    Dslide = 350;
    Dfire = 0;
    Guitarslide = -720;
  }
  if (Gspeed >=0 && stateR == "Riot_02") {
    image(img_Riot_04, 0, 0);
    image(img_Riot_03, 0, 0);
    Gspeed2 = Gspeed2 + 20;
    image(img_Riot_02, 0, Gspeed2);
    image(img_Restart_01, 0, 0);
  } else if (Gspeed >=720) {
    Gspeed =-1500;
    Gspeed2 =0;
  }

  println(stateGame);
}


void mousePressed() {
  if (jacket <=1 && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_02";
  } else if (jacket <=2 && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_03";
  } else if (jacket <=3 && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_04";
  } else if (jacket <=4 && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_05";
  } else if (jacket <=5 && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_06";
  } else if (jacket <=6 && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_07";
  } else if (jacket <=7 && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_08";
  } else if (jacket <=8 && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_01";
  }

  if (pants <= 1 && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_02";
  } else if (pants <= 2 && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_03";
  } else if (pants <= 3 && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_04";
  } else if (pants <= 4 && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_05";
  } else if (pants <= 5 && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_06";
  } else if (pants <= 6 && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_07";
  } else if (pants <= 7 && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_08";
  } else if (pants <= 8 && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_01";
  }


  if (stateEND00 == 0 && stateGame=="pregame" && mouseX >=1035 && mouseX <=1175 && mouseY >= 538 && mouseY <= 685) {
    stateR = "Riot_02";
    stateGame = "gameover";
  }

  if (stateGame == "gameover" && mouseX >=445 && mouseX <=835 && mouseY >= 515 && mouseY <= 610) {
    stateR = "Riot_01";
    state = "Jacket_01";
    stateP = "Pants_01";
    stateGame = "pregame";
  }

  //HB
  if (Dslide<=0 && mouseX >=120 && mouseX <=255 && mouseY >= 535 && mouseY <= 670) {
    stateHB = 1;
  }

  //Paint
  if (Pslide<=0 && statePaint ==0 && mouseX >=120 && mouseX <=255 && mouseY >= 535 && mouseY <= 670) {
    statePaint = 1;
  } else if (statePaint == 1 && mouseX >=120 && mouseX <=255 && mouseY >= 535 && mouseY <= 670) {
    statePaint = 2;
  } else if (statePaint == 2 && Pslide<=0 && mouseX >=120 && mouseX <=255 && mouseY >= 535 && mouseY <= 670) {
    statePaint = 3;
  } else if (statePaint == 3 && Pslide<=0 && mouseX >=120 && mouseX <=255 && mouseY >= 535 && mouseY <= 670) {
    statePaint = 1;
  }

  //OP
  if (stateGame=="OP"  && mouseX >=560 && mouseX <=720 && mouseY >= 560 && mouseY <= 600) {
    stateGame="pregame";
  }
  //END
  if (stateEND00 >=1  && mouseX >=570 && mouseX <=710 && mouseY >= 535 && mouseY <= 670) {
    stateEND0F=1;
  }
  if (stateEND0F >= 1 && mouseX >=170 && mouseX <=345 && mouseY >= 425 && mouseY <= 470) {
    stateR = "Riot_01";
    state = "Jacket_01";
    stateP = "Pants_01";
    stateGame = "pregame";
    stateEND0F = 0;
    stateEND00=0;
    stateEND01=0;
    stateEND02=0;
    stateEND03=0;
    stateEND04=0;
    stateEND05=0;
    stateEND06=0;
    stateEND07=0;
    stateEND08=0;
  }
  pants = int(random(1, 8));
  jacket = int(random(1, 8));
}
