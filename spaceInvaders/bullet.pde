class bullet {

  color bulletColor = color (200, 0, 0);
  int bulletW = 5;
  int bulletH = 20;
  int bulletR = 2;

  int x;
  int y = 500;

  bullet() {
   
    print("bullet Made");
  }

  void fire(int spawn) {
    rect(spawn, y, bulletW, bulletH, bulletR);
    y -= 6;
    print("Pew~");
  }
}
