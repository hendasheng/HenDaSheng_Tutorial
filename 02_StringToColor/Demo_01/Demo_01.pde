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
  stringToColor("e89005-ec7505-d84a05-f42b03-e70e02-ffffff-6bf178-35a7ff-363537-0cce6b");
}


void draw() {
  clear();

  fill(colors[2]);
  circle(width/2, height/2, 200);
}
