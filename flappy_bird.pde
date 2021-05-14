ArrayList<Colonna> colonne;
Bird p;
boolean isdead;
float y;

void setup() {
  size(600, 800, P2D);
  // i create an arraylist for the columns  
  colonne = new ArrayList<Colonna>();
  p= new Bird();
}

void draw() {
  background(255);
  //add new columns
  if (colonne.size()==0) {
    colonne.add(new Colonna(width));
  }
  if (frameCount %100==0) {
    colonne.add(new Colonna(width));
  }
  //run all the funcions for each column
  for (Colonna b : colonne) {
    b.display();
    b.move();
    b.hit();
  }
  //same thing for the circle
  p.display();
  p.gravity();
  p.die();
  //check if the game is over
  if (isdead==true) {
    background(0);
  }
  //remove colums out of the screen
  if (colonne.size()>=5) {
    colonne.remove(0);
  }
} 

//jump if the mouse is pressed
void mousePressed() {
  p.jump();
}
