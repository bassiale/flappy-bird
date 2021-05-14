// i create the class column
class Colonna {
  float x;
  float lung;
  float larg;
  float dist;

  Colonna(float temp) {
    x=temp;
    lung = random(100, 600);
    larg= 50;
    dist= random(150, 250);
  }

  // display the column on the screen
  void display() {
    fill(255, 0, 0);
    rect(x, 0, larg, lung);
    rect(x, lung+dist, larg, height-lung-50);
  }

  // let it move 
  void move() {
    fill(255, 0, 0);
    x=x-2;
  }

  //check if the bird is touching the column
  void hit() {
    if (x==width/2+32) {
      if (y+64<=lung||y+64>=lung+dist) {
        isdead=true;
      } else {
        isdead=false;
      }
    }
  }
}
