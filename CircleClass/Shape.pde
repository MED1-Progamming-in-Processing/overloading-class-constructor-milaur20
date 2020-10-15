class Shape {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  color circleColor = #FFFFFF;


  int sizex = 50;
  int sizey = 50;
  color squareColor = #000000;
  //circle
  Shape(float x, float y, float xSpeed, float ySpeed, int size) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.sizex = size;
  }
  //rect
  Shape(float x, float y, float xSpeed, float ySpeed, int sizex, int sizey) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.sizex = sizex;
    this.sizey = sizey;
  }

  void update() {
    background(200);
    frameRate(144);
    display();
    move();
  }

  void move() {
    x += xSpeed;
    if (x <= 0+sizex/2 || x >= width-sizex/2) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y <= 0+sizey/2 || y >= height-sizey/2) {
      ySpeed *= -1;
    }
  }

  void display() {
    if (switcher)  {
      fill(circleColor);
    ellipse(x, y, sizex, sizex);
    }
    else {
      fill(squareColor);
      rectMode(CENTER);
      rect(x, y, sizex, sizey);
    }
  }
}
