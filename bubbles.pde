class Bubbles {
  float bubbleX;
  float bubbleY;
  float bubbleSpeedX;
  float bubbleSpeedY;
  
  Bubbles(float bubbleX_, float bubbleY_) {
    bubbleX = bubbleX_;
    bubbleY = bubbleY_;
  }
  
  void display() {
    fill(245, 100);
    ellipse(bubbleX+bubbleSpeedX, bubbleY+bubbleSpeedY, 5, 5);
  }
  
  void move() {
     bubbleSpeedX += random(-1, 1);
    bubbleSpeedY += random(-1, 1);
  }
  
}
