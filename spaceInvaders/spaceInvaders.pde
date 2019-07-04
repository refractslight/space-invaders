// SPACE INVADERS (actually more like Galaga...)
// bless this mess

alien[] horde;
spaceship ship;
bullet pew;


// hacky way to track ship death
boolean shipDeath = false;

//position of ship
int x;
int y;

void setup() {
  size(600, 600);
  
  // create play pieces
  horde = new alien[6];
  ship = new spaceship();

// assign aliens random starting positions
  for (int i = 0; i < horde.length; i++) {
    horde[i] = new alien(int(random(25, 575)), int(random(20)));
  }
  print("aliens made");
}


void draw() {
  background(0, 0, 0);

  // move aliens down screen
  for (int i = 0; i < horde.length; i++) {
    horde[i].moveDown();
  }
 // draw the ship
  ship.render();
  
  // ship movement
  if (key == 'a') {
    x = ship.moveLeft();
  }
  if (key == 'd') {
    x = ship.moveRight();
  }
  

// fire mechanics  
  if (keyPressed) {
    if (key == ' ') {

        ship.fire();
        
    }
  }  

// broken collision junk
  for (int i = 0; i < horde.length; i++) {
    shipCollision(horde[i].startX, horde[i].startY);
  }
}


void shipCollision(int x, int y) {
      for (int i= 0; i < horde.length; i++) {
    if (x == horde[i].startX && y == horde[i].startY) {
      //print("explosion");
      ship.death();
    }
  }
}
