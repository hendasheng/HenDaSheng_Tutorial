class Item {

  String str;
  float tSize;
  color c;
  float speed;
  float x, y;

  Item(String str_temp, float tSize_temp, color c_temp, float speed_temp) {
    str = str_temp;
    tSize = tSize_temp;
    c = c_temp;
    speed = speed_temp;
    y = random(60, height-60);
  }

  void run() {
    move();
    display();
  }

  void move() {
    x += speed;
    if (x > width) {
      x = -textWidth(str);
      y = random(60, height-60);
      tSize = random(20, 40);
    }
  }

  void display() {
    textSize(tSize);
    fill(c);
    text(str, x, y);
  }
}
