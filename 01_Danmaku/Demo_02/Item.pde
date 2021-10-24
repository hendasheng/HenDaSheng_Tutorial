class Item {
  String str;
  float x, y;
  float speed;
  color tColor;

  Item(String str_temp, color tColor_temp, float y_temp) {
    str = str_temp;
    x = width;
    y = y_temp;
    speed = random(2, 6);
    tColor = tColor_temp;
  }

  void run() {
    move();
    display();
  }

  void move() {
    x -= speed;
    if (x < -textWidth(str)) x = width;
  }

  void display() {
    fill(tColor);
    textSize(30);
    text(str, x, y);
  }
}
