import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup () {
  size(500,500);
  arduino = new Arduino(this, Arduino.list()[1],57600);
}
void draw () {
  background(69,75,27);
  
  //arduino
  int x = arduino.analogRead(5);
  System.out.println(x);
  
  //ears
  fill(0,0,0);
  ellipse(300,150,50,50);
  ellipse(200,150,50,50);
  
  //body
  fill(255,255,255);
  ellipse(250*x,320,160,200);
  
  //head
  fill(255,255,255);
  ellipse(250,200,125,125);
  
  //feet
  fill(0,0,0);
  ellipse(200*x,380,60,80);
  ellipse(300*x,380,60,80);
  
  //hands
  ellipse(200*x,300,35,50);
  ellipse(300*x,300,35,50);
  
  //outer layer eyes
  ellipse(220,200,30,40);
  ellipse(280,200,30,40);
  
  //inner layer eyes
  fill(255,255,255);
  ellipse(220,200,17,24);
  ellipse(280,200,17,24);
  
  // eye
 fill(0,0,0);
 ellipse(220,197,11,10);
 ellipse(280,197,11,10);
 
 // nose
 ellipse(250,220,35,20);

}
