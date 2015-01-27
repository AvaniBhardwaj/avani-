ArrayList<GravityBall> balls = new ArrayList<GravityBall>();
int max = 300; // initialize number of balls 
PImage Night; //initialize image
void setup() { 
  size(976, 549); // display  the height

  Night = loadImage("night.jpg"); // load image

 // colorMode(HSB, 360, 100, 100, 100);
}

void draw() {

  background(Night);
  fill(frameCount%360, 100, 100); // how fast the color of balls changes
  stroke(frameCount%360, 100, 50);
  balls.add(new GravityBall(mouseX, mouseY, 50)); // increases the number of balls that come from the mouse
  for (int i = 0; i < balls.size (); i ++) {
    GravityBall b = balls.get(i);
    b.display(); //displays balls
    b.move(); //moves balls
  }

  if (balls.size() > max) { 
    balls.remove(0); //if the number of balls is greater than the initialized number given, destroy them.
  }
}

void mouseDragged() {
  balls.add(new GravityBall(mouseX, mouseY, random(30, 80))); // if mouse is moved around the screen, make the balls come from where the mouse is placed
}

