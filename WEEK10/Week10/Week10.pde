float x;
float noiseY;
float t;
float noiseY2;
float noiseY3;

void setup() {
  size(600, 600);
  background(0);
}

void draw() {
  x++;
  if (x>width){
   x = width; 
  }

  noiseY = height/2; 
  noiseY2 = height/3;
  noiseY3 = height/4;
  t += .01; 
  float n = noise(t);
  noiseY = map(n, 0, 1, height/2, height);  
  noiseY2 = map(n, 0, 1, height/3, height); 
  noiseY3 = map(n, 0, 1, height/4, height);
  vertex(x, noiseY);
  vertex(x, noiseY2);
  vertex(x, noiseY3);
  fill(255,0,0);
  noStroke();
  beginShape();
  ellipse(x, noiseY, 10, 10);
  ellipse(x, noiseY2, 10, 10);
  ellipse(x, noiseY3, 10, 10);
  endShape();
}
