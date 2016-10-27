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
  //rotateX(frameCount / 91.0);
  //rotateY(frameCount / 87.0);
  rotateZ(frameCount / 51.0);
  strokeWeight(8);
  colorMode(HSB, 360, 100, 100);
  for (int x = -SZ ; x < SZ ; x++) {
    for (int y = -SZ ; y < SZ ; y++) {
      stroke(map(abs(x + y), 0, SZ * 4, 0, 360), 100, 100);
      point(x * 20, y * 20, f(x, y));
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
    a = random(-5, 5);
    b = random(-5, 5);
    c = random(-5, 5);
    d = random(-180, 180);
    e = random(-30, 30);
    f = random(-10, 10);
  }
  
  float f(int x, int y) {
    int t = frameCount;
    return sin(radians((a * x + b * y + (f % 360) * t) * c + d)) * e;
  }
}