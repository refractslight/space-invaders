// SPACE INVADERS (actually more like Galaga...)
// bless this mess

alien[] horde;
spaceship ship;
bullet pew;

ArrayList<bullet> bullets = new ArrayList<bullet>();

int x;

void setup(){
  size(600, 600);
  horde = new alien[6];
  ship = new spaceship();
  
  
  for(int i = 0; i < horde.length; i++){
    horde[i] = new alien(int(random(25, 575)), int(random(20)));
  }
  print("aliens made");
  
}

void draw(){
  background(0, 0, 0);
  for(int i = 0; i < horde.length; i++){
    horde[i].moveDown();
  }

      if(key == 'a'){
        x = ship.moveLeft();
      }
      if(key == 'd'){
        x = ship.moveRight();
        
      }
      
   if(keyPressed){
      if(key == ' '){
        pew = new bullet();
        bullets.add(pew);
        for(int i = 0; i < bullets.size(); i++){
          pew.fire(x);
          delay(100);
          bullets.remove(pew);
        }
         
      }
   }  
  
}
