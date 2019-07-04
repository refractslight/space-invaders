class alien {
  
  int startX;
  int startY;
  
  int height;
  int width;
  
  int pixelHeight = 1;
  int pixelWidth = 1;
  
  color alienColor;
  
  float amplitude = random(200);
  float period = random(50, 100);
  float waveX;
  
alien(int xPos, int yPos){
  startX = xPos;
  startY = yPos;
  width = 20;
  height = 20;
  fill(255, 255, 255);
  //rect(startX, startY, width, height);
} 

void moveDown(){
  waveX = amplitude * cos(TWO_PI * frameCount / period);
  rect(startX, startY, width, height);
  startY +=1;
}



}
