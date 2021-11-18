int total;
float theta;
float radius;

PFont font;
String strs = "Processing 环绕文本、环绕一切 ";

void setup() {
  size(800, 800);
  pixelDensity(2);
  smooth();
  font = createFont("SourceHanSansSC-Heavy", 200, true);
  textFont(font);
  textSize(30);
  textAlign(CENTER, CENTER);

  total = strs.length();
  theta = TWO_PI / total;
  radius = 180;
}

void draw() {
  clear();

  char [] chars = new char[0];

  pushMatrix();
  translate(width/2, height/2);
  float angle = radians(frameCount) * 0.4; 
  rotate(angle);
  for (int i = 0; i < total; i++) {
    float x = radius * sin(i * theta);
    float y = radius * cos(i * theta);
    chars = append(chars, strs.charAt(i));
    pushMatrix();
    translate(x, y);
    rotate(-angle);
    text(chars[i], 0, 0);
    popMatrix();
  }
  popMatrix();
}
