class Amoeba {
  float theta;
  float x, y;
  color c;


  Amoeba(float x_, float y_) {
    x = x_;
    y = y_;
    theta = 0;
    c = color (0, random(50, 110), random(50, 110));
  }

  void breathe() {
    theta += 0.01;
  }

  void display () {
    pushMatrix();

    translate(x, y);
    noStroke();
    fill(c);
    ellipse(0, 0, 300+noise(theta)*100, 100+noise(theta)*50);

    rotateZ(radians(45));
    ellipse(0, 0, 300+noise(theta)*100, 100+noise(theta)*50);

    rotateZ(radians(45));
    ellipse(0, 0, 300+noise(theta)*100, 100+noise(theta)*50);

    rotateZ(radians(45));
    ellipse(0, 0, 300+noise(theta)*100, 100+noise(theta)*50);

    fill(220);
    ellipse(0, 0, 50, 50);
    popMatrix();

  }
}
