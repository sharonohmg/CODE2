//QUESTION 1

float radius;
int scale; 
String grow,shrink,text;

void setup(){
  size(500, 500); 
  radius = 0;
  grow = new String("GROW");
  shrink = new String("SHRINK");
}

void draw(){
  background(0); 
  radius += scale;
  
  if(radius <= 0){
    scale = 5;
    text = grow;
  }
  
  if(radius >= width){
    scale = -5;
    text = shrink;
  } 
  
  text(text, width * .1, height * .1); 
  ellipse(width/2, height/2, radius, radius);  
}

//Didn't understand the float PrintText() so I just used strings








////QUESTION 2

//Object myObject; 

//void setup(){
//  size(600, 600); 
  
//  myObject = new Object(); 
//}

//void draw(){
//  background(255); 
//  myObject.move(); 
//  myObject.checkBoundaries(); 
//  myObject.display(); 
//}


//class Object{
//  PVector pos, vel, accel; 
  
//  Object(){
//    pos = new PVector(width/2, height/2); 
//    vel = new PVector(0, 0); 
    
//  }
  
//  void move(){
//    PVector mouse = new PVector(mouseX,mouseY);
//    accel = PVector.sub(mouse,pos);
    
//    //normalize your accel vector here
//    accel.normalize();
//    vel.limit(4); 
    
//    //basic movement vector addition here...
//    vel=vel.add(accel);
//    pos=pos.add(vel);
//  }
  
//  void display() {
//    stroke(0);
//    fill(175);
//    ellipse(pos.x,pos.y,30,30);
//  }
  
//  void checkBoundaries(){
//    if(mouseX == 600 || mouseX ==0){
      
//  }
//}

//}









////QUESTION 3

//Object myObject;  

//void setup(){
//  size(600, 600); 
  
//  myObject = new Object(width/2, height/2); 
//}

//void draw(){
//  background(255); 
  
//  PVector gravity = new PVector(0, .1*o.mass); 
//  PVector wind = new PVector(0.1, 0); 

//  myObject.move(); 
//  myObject.checkBoundaries(); 
//  myObject.display(); 
   
//}

//void mousePressed(){
//  myObject.add(new Object(mouseX,mouseY));
//}


//class Object{
//  PVector pos, vel, accel; 
//  float mass; 
  
//  Object(float x, float y){
//    pos = new PVector(x, y); 
//    vel = new PVector(0, 0); 
//    accel = new PVector(0, 0); 
    
//    mass = random(5, 20); 
//  }
  
//  void move(){
//    vel.add(accel); 
//    pos.add(vel); 
    
//    accel.mult(0); 
//  }
  
//  void display() {
//    stroke(0);
//    fill(175);
//    ellipse(pos.x,pos.y,mass*3,mass*3);
//  }
  
//  void checkBoundaries() {
//    if (pos.x > width) {
//      pos.x = width;
//      vel.x *= -1;
//    } else if (pos.x < 0) {
//      vel.x *= -1;
//      pos.x = 0;
//    }
 
//    if (pos.y > height) {
//      vel.y *= -1;
//      pos.y = height;
//    }
//  } 
  
//  void addForce(PVector force){
    
//  }
//}

////Could not solve this one :(





////QUESTION 4
//int sceneNumber=0;

//void setup(){
//  size(600,600);
//}

//void draw(){
//  switch(sceneNumber){
//    case 0:
//      scene0();
//    break;
    
//    case 1:
//      scene1();
//    break;
    
//    case 2:
//      scene2();
//    break;
    
//    case 3:
//      sceneNumber=0;
//    break;
    
//  }
//}

//void mousePressed(){
//  sceneNumber++;
//}

//void scene0(){
//  background(0);
//}

//void scene1(){
//  background(255);
//}

//void scene2(){
//  background(100);
//}






////QUESTION 5
//float r; 
//color bgColor; 

//void setup(){
//  size(600, 600); 

//}

//void draw(){
//  background(bgColor); 
//  text("back ground # : " + bgColor, 100, 100); 
//}

//void mousePressed(){
//  bgColor = color(random(0,255), random(0,255), random(0,255)); 
//  ellipse(mouseX, mouseY, 50, 50); 
//}
