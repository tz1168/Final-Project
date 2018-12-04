Scrollbar sb1;  // Two scrollbars
PImage img1, img2;  // Two images to load
PImage a;
PImage b;
PImage c;
PImage z; //images

color backColor=color(255,255,255); // background color

int scene_start=0; //scene start at 0
int currentScene=scene_start; //start at first scene

long timer=0; //a timer
int duration=180; //3 minutes
int time=180;
int begin;

void setup() {
size(1000,800); //canvas size
background(backColor);
 
  
  noFill(); //transparent
  noStroke(); //no strokes invisible

  loadimages(); // load images
  
   sb1 = new Scrollbar(750, 750, 200, 16, 16);
   
   begin= millis();
}
void loadimages(){ //to clean things tidy
 a= loadImage("startpage.jpg"); //the starting page
 b= loadImage("2.png");// empty pot
 c= loadImage("with_noodles.png"); // pot with noodles
// d=
// e=
 z= loadImage("overcooked.png"); // bad ending
}
void draw() {
  if (currentScene == scene_start){
    backGround();

     
  }
   if (key == 'p'){
    play();
    time();
    sb1.display();
    sb1.update(); 
    if(key == 'n'){
       image(c,width/2,height/2);
     }
     
  }
  
  if(key == 'i') {
    info(); 
 } 
 
 else if(millis() > 180000) 
     {
       image(z, width/2, height/2);
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
 sb1.update();
 sb1.display();
 
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

void time(){
    time = duration - (millis() - begin)/1000;
    fill(0, 200, 153);
    textSize(30);
    text(time, 920, 100);
  }
