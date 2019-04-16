Snowflakes s;
ArrayList <Snowflakes> mySnow;

void setup() {

  s = new Snowflakes(random(0, width), 0);
  mySnow = new ArrayList<Snowflakes>();
  noStroke();
}

void draw() {
  background(0,0,255);

  for (int i=0; i<mySnow.size(); i++) {
    Snowflakes s = mySnow.get(i);
    s.display();
    s.fall();
    if (s.isAlive() == false) {
      mySnow.remove(i);
    }
  }

  if (frameCount%10 == 0) {
    mySnow.add(new Snowflakes(random(0, width), 0));
  }
  //s.display();
  //s.fall();
  //if(s.isAlive() == false){
  //  s.remove();
  //}
}

void mousePressed() {
  mySnow.add(new Snowflakes(mouseX, mouseY));
}
