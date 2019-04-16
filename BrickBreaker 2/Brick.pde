class Brick{
  
  float x, y;
  
  Brick(float _x, float _y){
    
    x=_x;
    y=_y;
    
  }
  
  void show(){
    fill(255);
    ellipse(x,y,50,50);
    
  }
  
  
}
