String fileName = "01_Danmaku_Demo_02";

int total = 20;
Item [] items;

String [] strs = {"Processing", "模拟弹幕", "第一次录制视频", "希望你喜欢", "类的应用"};
PFont font;

color [] colors;

void stringToColor(String colorStr) {
  String [] colorHex;
  colorHex = split(colorStr, "-");
  colors = new color[colorHex.length];
  for (int i = 0; i< colorHex.length; i++) {
    colors[i] = unhex("FF" + colorHex[i]);
  }
}

void setup() {
  size(800, 800);
  pixelDensity(2);
  smooth();

  // 字体名称 / 默认字号 / 抗锯齿
  // 字体名称：替换为电脑上安装好的字体
  font = createFont("SourceHanSansSC-Regular", 60, true);
  textFont(font);
  stringToColor("d741a7-3a1772-5398be-f2cd5d-dea54b-f2dc5d-f2a359-db9065-a4031f-f6ae2d");

  //printArray(PFont.list());
  items = new Item[total];
  for (int i = 0; i < total; i++) {
    String str = strs[(int)random(strs.length)];
    int tColor = colors[(int)random(colors.length)];
    float y = i * 40 + 30;
    items[i] = new Item(str, tColor,y);
  }
}

void keyPressed() {
  if (key == 's')
    saveFrame("output/" + fileName + "_" + nf(frameCount, 3) + ".png");
} 

void draw() {
  clear();

  for (int i = 0; i < total; i++) {
    items[i].run();
  }
}
