int total;
float theta;
float radius;

void setup() {
  size(800, 800);
  pixelDensity(2);
  smooth();
  
  total = 10;
  theta = TWO_PI / total;
  radius = 100;
}

void draw() {
  clear();

  pushMatrix();
  translate(width/2, height/2);
  for (int i = 0; i < total; i++) {
    float x = radius * sin(i * theta);
    float y = radius * cos(i * theta);

    circle(x, y, 30);
  }
  popMatrix();
}
