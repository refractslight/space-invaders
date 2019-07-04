class bullet {

  color bulletColor = color (200, 0, 0);
  int bulletW = 5;
  int bulletH = 20;
  int bulletR = 2;

  int x;
  int y = 500;
  
  bullet(int start) {
   x = start;
    print("bullet Made");
  }


// moves bullet up the screen
  void advance(){
    render();
    y -= 6;
    
  }
  
  void render(){
    rect(x, y, bulletW, bulletH, bulletR);
  }
}
