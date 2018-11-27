PImage a;
int play,info;
int playX, playY;

void setup() {
size(1000,800); //canvas size
  playX=570;
  playY=618;
    a= loadImage("startpage.jpg"); //the starting page
}
void draw() {
  imageMode(CENTER);
  image(a,width/2,height/2); 
  
  noFill(); //transparent
  noStroke(); //no strokes invisible
  rect(playX,618,140,70); //play button
  rect(765,625,150,65); //info button
}
/*
void mousePressed() {
  if (play) {
 
  }
  if (info) {
  
  }
}
*/
