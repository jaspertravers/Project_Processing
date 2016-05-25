static int stepSize = 15;
static int diameter = 20;
static int fill = 20; //alpha
static int col = 200; //color

int count = 3; //number of agents

PVector center;
ArrayList<Agent> agents = new ArrayList<Agent>();


void setup() {
  size (640, 640);
  background(0);
  frameRate(1920); //60, 120, 240, 480, 960, 1920, 5840
  noStroke();
  //stroke(100);
  
  center = new PVector (width / 2, height / 2);
  for (int i = 0; i < count; i++) {
    agents.add (new Agent (center.x, center.y));
  }
}

// file-wide variables dependent on setup

  

void draw() {
  
  for (Agent a : agents) {
    a.step();
  }
  
}

void keyPressed() {
  
  if (key == ' ') {
    saveFrame("Agent-######.png");
  }
}