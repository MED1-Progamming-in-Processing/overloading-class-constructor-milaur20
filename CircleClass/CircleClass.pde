Shape shape1;
Shape shape2;

int radius = 50;
int size = 50;
float x = random(width)+radius/2;
boolean switcher = true;

void setup() {
  size(500, 500);
  shape1 = new Shape(random(width+radius/2), random(height+radius/2), random(-3, 3), random(-3, 3), radius);
  shape2 = new Shape(random(width+size), random(height+size), random(-3, 3), random(-3, 3), size, size);
}


void draw() {
  shape1.update();
  shape2.update();
  println(x);
}
void mousePressed() {
  if (switcher) {
    switcher = false;
  } else {
    switcher = true;
  }
}
