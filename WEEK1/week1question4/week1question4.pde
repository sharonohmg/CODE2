float angle = 0.0;
float incr = 0.05;
float scalar;
boolean dirSwitch = false;

void setup(){
  size(600,600);
  scalar = height/2-50;
  
}
void draw(){
  background(255);
  
  if(dirSwitch ==false){
  float x = width/2 + sin(angle+0.4) * scalar;
  ellipse(x,height/2,100,100);
  } else{
    float y = height/2 + sin(angle+0.4) * scalar;
  ellipse(width/2,y,100,100);
  }
  angle += incr;  
}

void mousePressed() {
   dirSwitch = !dirSwitch;  
}
