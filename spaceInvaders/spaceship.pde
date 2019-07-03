class spaceship {

  int height;
  int width;

  
  
  int startPos = -300;
  int x;
  int y = 550;
  int bulletY;
  
  color shipColor = color(0, 0, 200);
 
  
  spaceship() {
    width = 40;
    height = 40;
    fill(shipColor);
    rect(startPos, -325, width, height);
  }
  
  void makeShip(){
  }
  
  int moveRight(){
      rect(x, y, width, height);
      x +=1;
      print("right");
      return x;
    }
   int moveLeft(){
     rect(x, y, width, height);
     x -= 1;
     print("left");
     return x;
    }
    
    
  }  
  
