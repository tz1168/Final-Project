import g4p_controls.*;
import processing.sound.*;
PGraphics fog;
GSlider slider1;
GButton bTurnon, bTurnoff;
GTimer timerr;
SoundFile sample;
PImage img1, img2;  // Two images to load
PImage a;
PImage b;
PImage c;
PImage d;
PImage e;
PImage f;
PImage g;
PImage h;
PImage i;
PImage j;
PImage k;
PImage l;
PImage m;
PImage n;    //Images
PImage o;
PImage p;
PImage q;
PImage r;
PImage s;
PImage t;
PImage u;
PImage v;
PImage w;
PImage x;
PImage y;
PImage z; //images

color backColor=color(255,255,255); // background color

int scene_start=0; //scene start at 0
int currentScene=scene_start; //start at first scene

long timer=0; //a timer
int duration=60; //3 minutes
int time=60;
int begin;

ArrayList liveSteam, deadSteam;
int rate;



void setup() {
size(1000,800); //canvas size
background(backColor);
 
  
  noFill(); //transparent
  noStroke(); //no strokes invisible

  loadimages(); // load images
  
  sample= new SoundFile(this,"Soundtrack.mp3");  //import background music
  sample.loop();
  
   begin= millis(); //timer
   backGround();
   
bTurnon= new GButton(this, 700, 700, 100, 20, "On");//a button says on
bTurnoff= new GButton(this, 800, 700, 100, 20, "Off"); // a button says off

slider1 = new GSlider(this, 700, 730, 200, 20, 10);
  slider1.setLimits(50, 10, 120); 
  slider1.setEasing(5);
  rate = 130 - slider1.getValueI();
  timerr = new GTimer(this, this, "steamBubble", rate);
  liveSteam = new ArrayList(2000);
  deadSteam= new ArrayList(100);
  frameRate(30);
   
   if(millis() > 60000) {
       image(z, width/2, height/2);
     }
  
}
void loadimages(){ //to clean things tidy
 a= loadImage("startpage.jpg"); 
 //the starting page
 b= loadImage("2.png");
 // empty pot
 c= loadImage("with_noodles.png"); 
 // pot with noodles
 d= loadImage("info.png"); 
 //info page
 e=loadImage("friedegg.png");
 //fried egg
 f=loadImage("ham.png");
 g=loadImage("scallion.png");
 h=loadImage("e+s+h+noodle.png");
 i=loadImage("noodle.png");
 j=loadImage("e+n.png");
 k=loadImage("e+n+s.png");
 l=loadImage("e+s.png");
 m=loadImage("egg_scallion_ham.png");
 n=loadImage("egg_scallion_ham_noodle.png");
 o=loadImage("egg_ham.png");
 p=loadImage("egg_ham_noodle.png");
 q=loadImage("egg_noodle.png");
 r=loadImage("scallion_ham.png");
 s=loadImage("scallion_ham_noodle.png");
 t=loadImage("scallion_noodle.png");
 u=loadImage("ham_noodle.png");
 v=loadImage("ramen_fog.png");
 w=loadImage("ramen_enjoy.png");
 x=loadImage("");
 y=loadImage("");
 z= loadImage("overcooked.png"); 
 // bad ending
}
void draw() {
   
 
  
 // if (currentScene == scene_start){
 //
     
 // }
   //if (mouseX>50 && mouseX<140 && mouseY>40 && mouseY<80 && mousePressed){
   //if (mouseX>570 &&mouseX<700 &&mouseY>620 &&mouseY<680 && mouseClicked){
     if (key=='p'){ // to start the game
    play();
    time();
  }

     if(key == 'i') { // to get info for the game
    info(); 
        
 } 
     if (key== 'r'){ // when your ramen is ready
    clear();
    background(255);
  //  fill(255);
   // noStroke();
  //  rect(0,0,1000,800);
     }
   if(key == 'n'){ //add noodles
   fill(255);
   rect(910,62,100,50);
     image(i,width/2,height/2);
     time();
     
   }
  else if(key == 'e'){ //add egg
        fill(255);
   rect(910,62,100,50);
        image(e,width/2,height/2);
        time();
        if(key == 's'){ //add scallion
          clear();
          egg_scallion();
        }
  }
  else if(key =='h'){ //add ham
   fill(255);
   rect(910,62,100,50);
     image(f,width/2, height/2);
     time();
   }
  else if (key=='s'){ //add scallion
   fill(255);
   rect(910,62,100,50);
   image(g,width/2,height/2);
   time();
   }
   
   void play() {
 resetSketch();
 backColor=color(0);
 image(b,width/2,height/2);

 //slider();



}

void time(){
    time = duration - (millis() - begin)/1000;
    fill(0, 200, 153);
    textSize(30);
    text(time, 920, 100);

  }
