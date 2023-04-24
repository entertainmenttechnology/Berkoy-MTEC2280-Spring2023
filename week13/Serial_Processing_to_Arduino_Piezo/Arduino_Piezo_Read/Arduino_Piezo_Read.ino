//////////////////////////////////////////////////////////////////////////////////////////
/*
   Pair with Processing piezo sketch, to control piezo with Processing interface.

   For more info on piezos, see: 
   https://create.arduino.cc/projecthub/SURYATEJA/use-a-buzzer-module-piezo-speaker-using-arduino-uno-89df45
   and
   https://learn.sparkfun.com/tutorials/sik-experiment-guide-for-arduino---v32/experiment-11-using-a-piezo-buzzer
   For tone(): https://www.arduino.cc/reference/en/language/functions/advanced-io/tone/ 
*/
//////////////////////////////////////////////////////////////////////////////////////////

const int BUZZER = 5; //buzzer to arduino pin 5
int val = 0; //tracks incoming value from Serial port  
int frequency=0; //tracks value to send to piezo

void setup() {
  pinMode(BUZZER, OUTPUT); 
  Serial.begin (9600); //start serial communication at 9600 baud
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
    delay (10);
  }
    frequency = map (val, 0, 255, 100, 1500);
    tone (BUZZER, frequency, 10);  // send frequency at 10 millis duration
    delay (1);   
}
