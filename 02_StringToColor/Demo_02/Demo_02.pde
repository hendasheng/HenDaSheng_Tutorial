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
  stringToColor("1e212b-4d8b31-ffc800-ff8427-ffffff-c20114-c7d6d5-ecebf3-adfcf9-f05d5e");
}

void draw() {
  clear();

  for (int i = 0; i < colors.length; i++) {
    fill(colors[i % colors.length]);
    circle(i * mouseX, height/2, 60);
  }
}
