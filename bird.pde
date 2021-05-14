// create the class for the bird
class Bird {
  float x;
  float gravity;
  float jump;
  float vel;

  Bird() {
    x= width/2;
    y=height/2;
    gravity= 0.6;
    jump=-15;
    vel=0;
  }

  // display the bird on the screen
  void display() {
    fill(0, 255, 0);
    circle(x, y, 64);
  }

  //gravity
  void gravity() {
    vel= vel+gravity;
    y=y+vel;
    if (y>height) {
      y=height;
      vel=0;
    }
  }

  //jump
  void jump() {
    if (y<0) {
      y=0;
      vel=0;
    }
    vel=vel+jump;
  }

  //check if it's dead
  void die() {
    if (y<=5||y==height) {
      isdead = true;
    }
  }
}
