Environment environment;
Amoeba[] amoeba;

void setup() {
  fullScreen(P3D);
  environment = new Environment();
  amoeba = new Amoeba[2];
  for (int i = 0; i < amoeba.length; i++) {
    amoeba[i] = new Amoeba(random(width/2+200, width-200), random(200, height-200));
  }
}

void draw() {
  environment.display();
  for (int i = 0; i < amoeba.length; i++) {
    amoeba[i].breathe();
    amoeba[i].display();
  }
}

void mousePressed() {
}
