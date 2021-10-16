String fileName = "01_Danmaku_Demo_01";

int total = 20;
Item [] items;

String [] strs = {"Processing", "模拟弹幕", "第一次录制视频", "希望你喜欢", "类的应用"};
color [] colors = {#219EBC, #8ECAE6, #023047, #FFB703, #FB8500};

PFont font;

void setup() {
  size(800, 800);
  pixelDensity(2);
  smooth();

  // 字体名称 / 默认字号 / 抗锯齿
  // 字体名称：替换为电脑上安装好的字体
  font = createFont("SourceHanSansSC-Regular", 60, true);
  textFont(font);

  //printArray(PFont.list());
  items = new Item[total];
  for (int i = 0; i < total; i++) {
    String str = strs[(int)random(strs.length)];
    color tColor = colors[(int)random(colors.length)];
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
