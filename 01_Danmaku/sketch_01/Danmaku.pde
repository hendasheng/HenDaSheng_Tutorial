class Danmaku {

  String [] strs = {"很大声周刊", "第一次录制视频", "弹幕", "Processing", "动态封面", "Class", "类"};
  color [] colors = {#24DE0B, #290DFF, #FF9F1C, #6D23B6, #F51B60};
  PFont font;

  int total;
  Item [] items;

  Danmaku() {
    font = createFont("SourceHanSansSc-Regular", 200, true);
    textFont(font);
    total = 30;
    items = new Item[total];
    for (int i = 0; i < total; i++) {
      String str = strs[(int)random(strs.length)];
      float tSize = random(20, 40);
      color c = colors[(int)random(colors.length)];
      float speed = random(2, 6);
      items[i] = new Item(str, tSize, c, speed);
    }
  }

  void run() {
    for (int i = 0; i < total; i++) {
      items[i].run();
    }
  }
}
