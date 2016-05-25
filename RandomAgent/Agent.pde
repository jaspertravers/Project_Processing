class Agent {
  
  int prob = 10000;

  //int red = (int) random (0, 255); prototype
  int red = 200;
  int green = 100;
  int blue = 50;
  
  
  int incMax = 3; //max value red, green, or blue can increment/decrement by
  
  int posX;
  int posY;
  
  int NORTH = 0;
  int NORTHEAST = 1;
  int EAST = 2;
  int SOUTHEAST = 3;
  int SOUTH = 4;
  int SOUTHWEST = 5;
  int WEST = 6;
  int NORTHWEST = 7;
  
  public Agent(float x, float y) {
    posX = (int) x;
    posY = (int) y;
  }
  
  void display() {
    int chance = (int) random (0, prob);
    //fill (col, fill); //uses static col value (black) from main file
    fill (red, green, blue, fill); //uses varying non-static colors from step()
    
    if (chance == -1) { //-1 turns this off
      fill (0, 204, 204, 100);
      ellipse (posX + stepSize / 2, posY + stepSize / 2, diameter * 4, diameter * 4);
      return;
    }
    ellipse (posX + stepSize / 2, posY + stepSize / 2, diameter, diameter);
  }
  
  void step() {
    int direction = (int) random (0, 8);
    
    if (direction == NORTH) {
      posY -= stepSize;
    }
    else if (direction == NORTHEAST) {
      posX += stepSize;
      posY -= stepSize;
    }
    else if (direction == EAST) {
      posX += stepSize;
    }
    else if (direction == SOUTHEAST) {
      posX += stepSize;
      posY += stepSize;
    }
    else if (direction == SOUTH) {
      posY += stepSize;
    }
    else if (direction == SOUTHWEST) {
      posX -= stepSize;
      posY += stepSize;
    }
    else if (direction == WEST) {
      posX -= stepSize;
    }
    else if (direction == NORTHWEST) {
      posX -= stepSize;
      posY -= stepSize;
    }
    
    if (posX > width) {
      posX = 0;
    }
    if (posX < 0) {
      posX = width;
    }
    if (posY > height) {
      posY = 0;
    }
    if (posY < 0) {
      posY = height;
    }
    
    red += (int) random (-incMax, incMax);
    green += (int) random (-incMax, incMax);
    blue += (int) random (-incMax, incMax);    
    
    display();
  }
}