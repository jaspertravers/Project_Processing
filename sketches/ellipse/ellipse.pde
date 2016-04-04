void setup() {
  size(1920, 1080);
}

void draw() {
  if (mousePressed) {
    fill(0);
    ellipse(mouseX, mouseY, 80, 80);
  } else {
    fill(255);
  }
}
