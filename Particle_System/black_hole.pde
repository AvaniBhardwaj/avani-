// declare GravityBall variables
class GravityBall {
  PImage snow;
  
  PVector loc, velo, acc;
  float sz, hue, sat, bright, alpha;

  // initialize GravityBall variables
  GravityBall(float tempx, float tempy, float tempsz) {
    sz = tempsz;
    velo = new PVector(random(5), 0);
    acc = new PVector(0, .1);
    loc = new PVector(tempx, tempy);
    hue = random(360);
  snow = loadImage("flake.jpg");
   //  sat = 10;
  //bright = 100;
  //alpha = 100;
  }

  // what the GravityBall does

  void display() {
    //fill(hue, sat, bright, alpha);
    image(snow,loc.x, loc.y, sz, sz); 
    //alpha--;
  }

  void move() {
    velo.add(acc);
    loc.add(velo);
  }


  void collide(GravityBall other) {
    if (loc.dist(other.loc) < sz/2 + other.sz/2) {
      velo = PVector.sub(loc, other.loc);
      velo.normalize();
    }
  }
}
