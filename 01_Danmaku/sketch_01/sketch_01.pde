String fileName = "01_Danmaku_01";
Danmaku danmaku;

void setup() {
  size(960, 540);
  //frameRate(60);
  pixelDensity(2);
  smooth();

  danmaku = new Danmaku();
  //noLoop();
}

void draw() {
  clear(); 
  danmaku.run();
}

void keyPressed() {
  if (key == 's')
    saveFrame("output/" + fileName + "_" + nf(frameCount, 3) + ".png");
} 
