import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;
import peasy.test.*;

PeasyCam cam;
int SZ = 20;
Wave w0, w1, w2, w3, w4;

void setup() {
  size(640, 480, OPENGL);
  colorMode(HSB, 360, 100, 100);
  cam = new PeasyCam(this, 100);
  w0 = new Wave();
  w1 = new Wave();
  w2 = new Wave();
  w3 = new Wave();
  w4 = new Wave();
}

void draw() {
  colorMode(HSB, 360, 100, 100);
  background(frameCount % 360, 50, 50);
  colorMode(RGB);
  rotateX(frameCount / 91.0);
  rotateY(frameCount / 87.0);
  rotateZ(frameCount / 51.0);
  strokeWeight(8);
  stroke(255);
  for (int x = -SZ ; x < SZ ; x++) {
    for (int y = -SZ ; y < SZ ; y++) {
      point(x * 10, y * 10, f(x, y));
    }
  } 
}

float f(int x, int y) {
  return w0.f(x, y)
    + w1.f(x, y) 
    + w2.f(x, y) 
    + w3.f(x, y) 
    + w4.f(x, y); 
}

class Wave {
  float a, b, c, d, e, f;
  
  Wave() {
    a = random(-.010, .010);
    b = random(-.010, .010);
    c = random(-.10, .10);
    d = random(-.010, .010);
    e = random(-100, 100);
    f = random(-.010, .010);
  }
  
  float f(int x, int y) {
    int t = frameCount;
    return sin((a * x + b * y + f * t) * c + d) * e;
  }
}