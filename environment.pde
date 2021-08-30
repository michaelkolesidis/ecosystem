class Environment {
  Bubbles[] bubbles;
  color c;
  float colorChanger;


  Environment () {
    colorChanger = 0;
    bubbles = new Bubbles[100];
    for (int i = 0; i < 100; i++) {
      bubbles[i] = new Bubbles(random(width/2), random(height));
    }
  }

  void display() {
    // Display a breathing background
    c = color (abs(sin(colorChanger)*10), 0, 10+abs(sin(colorChanger)*30));

    fill(c);
    rect(0, 0, width, height); 

    colorChanger += 0.02;

    for (int i = 0; i < 100; i++) {
      bubbles[i].display();
      bubbles[i].move();
    }
  }
}
