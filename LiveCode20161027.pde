import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;
import peasy.test.*;

PeasyCam cam;
int SZ = 20;

void setup() {
  size(640, 480, OPENGL);
  colorMode(HSB, 360, 100, 100);
  cam = new PeasyCam(this, 100);
}

void draw() {
  colorMode(HSB, 360, 100, 100);
  background(frameCount % 360, 50, 50);
  colorMode(RGB);
  rotateX(frameCount / 91.0);
  rotateY(frameCount / 87.0);
  rotateZ(frameCount / 51.0);
  strokeWeight(4);
  stroke(255);
  for (int x = -SZ ; x < SZ ; x++) {
    for (int y = -SZ ; y < SZ ; y++) {
      point(x * 10, y * 10, 0);
    }
  } 
}