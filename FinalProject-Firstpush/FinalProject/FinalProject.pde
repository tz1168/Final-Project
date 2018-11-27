PImage a;
PImage b;
int play,info;
int playX, playY;
int playWidth=140;
int playHeight=70;
int infoX,infoY;
int infoWidth=150;
int infoHeight=65;
color backColor=color(255,255,255);

int scene_start=0;
int currentScene=scene_start;

void setup() {
size(1000,800); //canvas size
background(backColor);
  playX=570;
  playY=618;
  infoX=765;
  infoY=625;
  
  noFill(); //transparent
  noStroke(); //no strokes invisible
  rect(playX,playY,playWidth,playHeight); //play button
  rect(infoX,infoY,infoWidth,infoHeight); //info button
  
  loadimages();
  
}
void loadimages(){
 a= loadImage("startpage.jpg"); //the starting page
 b= loadImage("ramen.jpg");//ramen bowl
}
void draw() {
  if (currentScene == scene_start){
    backGround();
  }
  if(mousePressed == true && mouseX>playX && mouseX <playX+playWidth && mouseY>playY && mouseY <playY+playHeight){
  play();
  }
  if(mousePressed == true && mouseX>infoX && mouseX <infoX+infoWidth && mouseY>infoY && mouseY <infoY+infoHeight) {
  info(); 
 } 
}

void backGround(){
  imageMode(CENTER);
  image(a,width/2,height/2); 


 /* 
  if(mousePressed){
  if(mouseX>playX && mouseX <playX+playWidth && mouseY>playY && mouseY <playY+playHeight){
    background(0);
    rect(0,0,1000,800);
    
   
  }
  }
  */

}
void play() {
 resetSketch();
 backColor=color(0);
 image(b,width/2,height/2);
}
void info(){
 resetSketch();
 backColor=color(0);
}
/*
void mouseClicked() {
    if (mouseX>playX && mouseX <playX+playWidth && mouseY>playY && mouseY <playY+playHeight) {
     play();   
    }
     else if (mouseX>infoX && mouseX <infoX+infoWidth && mouseY>infoY && mouseY <infoY+infoHeight) {
     info();    
    }
}
    */
void resetSketch(){
  background(255);
}
