int SZ = 20;

void setup() {
  size(640, 480, OPENGL);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(frameCount & 360, 50, 50);
  for (int x = 0 ; x < SZ ; x++) {
    for (int y = 0 ; y < SZ ; y++) {
      point(x, y, 0);
    }
  } 
}