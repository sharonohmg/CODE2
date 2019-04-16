Brick[] bricks;
int b = 60;

void setup(){
  size(600,600);
  bricks = new Brick[b];
  
  int i = 0;
  float x =50;
  float y =50;
  while(i<b){
    bricks[i] = new Brick(x,y);
    i++;
    x+=50;
    if(x ==600){
      x=50;
      y+=50;
    }
  }
}

void draw(){
  int i = 0;
  while(i<b){
    bricks[i].show();
    i++;
  }
}
