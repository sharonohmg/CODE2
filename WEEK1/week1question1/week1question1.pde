String words [] = {"inspirational quote", "so inspirational", "don't you feel so inspired", "motivating quotes are so motivating"};
void setup(){
  size(650,600);
  background(255);
  textAlign(CENTER);
}

float d1;
float d2;
float d3;
float d4;
void draw(){
  
  textSize(20);
  text(words[0], width/2, 350);

  ellipse(400,height/3,100,100);  
  if(mousePressed && mouseX < 300 && mouseX > 200){
    fill(255);
    text(words[0], width/2, 350);
  } else {
    fill(0);
  }

  ellipse(250,height/3,100,100);
  if(mousePressed && mouseX < 150 && mouseX > 50){
    fill(255);
    text(words[1], width/2, 350);
  } else {
    fill(0);
  }

  ellipse(100,height/3,100,100);
  if(mousePressed && mouseX < 600 && mouseX > 500){
    fill(255);
    text(words[2], width/2, 350);
  } else {
    fill(0);
  }

  ellipse(550,height/3,100,100);
  if(mousePressed && mouseX < 450 && mouseX > 350){
    fill(255);
    text(words[3], width/2, 350);
  } else {
    fill(0);
  }
}
