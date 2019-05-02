int sceneNumber=0;
int state=0;
float x,y;
void setup(){
  size(600,600);
  x=width/2;
  y=height/2;
}

void draw(){
  switch(state){
    case 0:
    drawIntro();
    break;
  case 1:
    drawScene1();
    break;
 
  }
}

void keyPressed() {
  switch (state) {
  case 0:
    if (key == ENTER) {
      state = 1;
    }
    break;
  }
}

void drawIntro() {
  background(255, 0, 0);
  fill(0);
  ellipse(width/2,height/2,100,100);
}

void drawScene1() {
  background(0, 0, 255);
  y-=5;
  fill(255);
  ellipse(x,y,100,100);
  if(y==height/2){
    state=2;
  }
}
