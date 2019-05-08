int sceneNumber=0;
//int y =  -5;
PShape s;
PShape f;
PShape p;
PShape c1;
PShape c2;
PShape c3;
PShape v;
PShape t;

void setup(){
  size(570,650,P3D);
  background(182, 224, 241);
   s = loadShape("TerracottaPot.obj");
   f = loadShape("12970_snowdrop_flower_v1_l2.obj");
   p = loadShape("Pots.obj");
   c1 = loadShape("cactus.obj");
   c2 = loadShape("cactus.obj");
   c3 = loadShape("cactus.obj");
   v = loadShape("HSM0026.obj");
   t = loadShape("12978_tulip_flower_l3.obj");
   s.rotateX(110);
   f.rotateX(PI/2);
   p.rotateX(110);
   c1.rotateX(110);
   c2.rotateX(110);
   c3.rotateX(110);
   v.rotateX(PI/2);
   t.rotateX(PI/2);
   
   f.scale(25);
   s.scale(.9);
   p.scale(40);
   c1.scale(40);
   c2.scale(50);
   c3.scale(52);
   v.scale(4);
   t.scale(15);
   
   c3.translate(0, 0, 40);
   
   PImage img = loadImage("snowdrop_flower_diffuse.jpg");
   texture(img);
}

void draw(){
  switch(sceneNumber){
    case 0:
      scene0();
background(182, 224, 241);
  //ellipse(mouseX,mouseY,100,100);
  //noStroke();
    
  directionalLight(150, 150, 150, .5, 0, -1);
  ambientLight(203,57,106);
  ambient(255, 26, 0);
  translate(width/2, height);
  shape(s, 0, -20);
  //shape(s, -150, -20);
  //shape(s, 150, -20);
  f.rotateY(PI/3);
  
  

  shape(f, 0, -150);
  //shape(f, -150, -150);
  //shape(f, 150, -150);
    break;
   
    
    
    
    
    case 1:
      scene1();
      
      pushMatrix();
      background(242, 255, 137);
  //ellipse(mouseX,mouseY,100,100);
  //noStroke();
    
  directionalLight(150, 150, 150, .5, 0, -1);
  ambientLight(203,57,106);
  ambient(255, 26, 0);
  translate(width/2, height);
  shape(p, 0, -100);
  shape(c1,-10,-230);
  shape(c2,70,-210);
  shape(c3,-70,-230);
    
    
    c1.rotateY(.05);
    c2.rotateY(.05);
    //c3.rotateY(.05);
    
    //if(y<-6){
    //  y++;
    //}
    
   c1.setFill(color(90,148,122));
   c2.setFill(color(90,148,90));
   c3.setFill(color(102,149,89));
   
popMatrix();
   
    
   

 

    break;
    
    case 2:
      scene2();
      
      background(255, 181, 200);
      directionalLight(150, 150, 150, .5, 0, -1);
    ambientLight(181,193,255);
    ambient(255, 26, 0);
    translate(width/2, height);
    shape(v, 0, -50);
    shape(t, 0, -225);
    t.rotateY(PI/3);
    
    PImage img1 = loadImage("12978_tulip_flower_leaf_Diffuse.jpg");
   texture(img1);
   PImage img2 = loadImage("12978_tulip_flower_petal_Diffuse.jpg");
   texture(img2);
   PImage img3 = loadImage("12978_tulip_flower_stalk_Diffuse.jpg");
   texture(img3);
  
      
    break;
    
    case 3:
      sceneNumber=0;
    break;
    
  }
}

void mousePressed(){
  sceneNumber++;
}

void scene0(){
  background(0);
}

void scene1(){
  background(255);
}

void scene2(){
  background(100);
}
