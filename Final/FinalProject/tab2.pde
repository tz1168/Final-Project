class Steam{
  
  Steam(){
  }
  void display(){
  noStroke();
  float x = random(500,600);
  float y = random(200,800);
  for (int i = 0; i <= 300; i++) {
    float rad = random(80,100);
    fill(255,5);
    ellipse(x,y,rad,rad);
    
    x = x+(int(random(-1*(rad/2),rad/2)));
    x = constrain(x,0,width);
    y = y+(int(random(-1*(rad/2),rad/2)));
    y = constrain(y,0,height);
  }
  }
  }
