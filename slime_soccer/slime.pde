class slime {
  PVector x, v;
  float r;
  boolean jump, moveLeft, moveRight;

  slime() {
    r = 75;
    x = new PVector(95, 95);
    v = new PVector(40, 40);
    jump = false;
    moveLeft = false;
    moveRight = false;
  }

  void render() {
    noStroke();
    fill(150, 115, 0);
    ellipse(x.x, x.y, 2*r, 2*r);
    fill(255);
    rect(x.x-r, x.y, 2*r, r);
  }

  void update() {
    v.y += g;
    
    if (moveLeft) {
      v.x += -8;
    }
    if (moveRight) {
      v.x += 8;
    }
    if (jump && x.y == height) {
      v.y = -10;
      jump = false;
    }

    x.add(v);

    if ( x.y > height) {
      x.y = height;
      v.y = 0;
    }

    v.x = 0;
  }
}
