class spaceship {

   
  int height;
  int width;
  
  int startPos = -300;
  int x;
  int y = 550;
  int bulletY;
  
  
  // keep bullets here
ArrayList<bullet> bullets = new ArrayList<bullet>();

  color shipColor = color(0, 0, 200);
  bullet theBullet;
  
  spaceship() {
    width = 40;
    height = 40;
    fill(shipColor);
    rect(startPos, -325, width, height);
    
  }
  
  int moveRight(){
      rect(x, y, width, height);
      x +=1;
      //print("right");
      return x;
    }
   int moveLeft(){
     rect(x, y, width, height);
     x -= 1;
     //print("left");
     return x;
    }
    
    void render(){
      rect(x, y, width, height);
      if(theBullet != null){
        theBullet.render();
        theBullet.advance();
        //print("Pew~");
      }
      
    }
    
    void fire() { 
    //pew = new bullet(x);
    theBullet = new bullet(x);
    bullets.add(theBullet);
  }
  
  void death(){
    
  }

  }  
  
