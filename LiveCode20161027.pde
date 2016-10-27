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
  background(frameCount & 360, 50, 50);
  strokeWeight(2);
  stroke(255, 100, 100);
  for (int x = 0 ; x < SZ ; x++) {
    for (int y = 0 ; y < SZ ; y++) {
      point(x, y, 0);
    }
  } 
}