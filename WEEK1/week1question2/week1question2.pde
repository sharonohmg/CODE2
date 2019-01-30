void setup() {
  size(600, 600);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float r = map(i, mouseX, 255, mouseY, width*.2);
      float g = map(j, mouseX, 255, mouseY, height*.2);
      stroke(r, g, 175);
      point(i, j);
    }
  }
}
