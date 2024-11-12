Particle[] beam = new Particle[1000];
oddBall[] odd = new oddBall[1000];

void setup() {
  size(1000, 1000);
  noStroke();
  for (int i = 0; i<beam.length; i++) {
    beam[i] = new Particle();
  }
  for (int i = 0; i<10; i++) {
    odd[i] = new oddBall();
  }
}

void draw() {
  background(0);
  for (int i = 0; i<beam.length; i++) {
    beam[i].show();
    beam[i].move();
  }
  for (int i = 0; i<10; i++) {
    odd[i].show();
    odd[i].move();
  }
}

class Particle {
  double myX, myY, myAngle, mySpeed;
  int  myColorR, myColorG, myColorB;
  Particle() {
    myAngle = Math.random()*2*Math.PI;
    myX = myY = 500;
    myColorR = (int)(Math.random()*200+50);
    myColorG = (int)(Math.random()*200+50);
    myColorB = (int)(Math.random()*200+50);
    mySpeed = (int)(Math.random()*20);
  }
  private void show() {
    fill(myColorR, myColorG, myColorB);
    ellipse((float)myX, (float)myY, 20, 20);
  }
  private void move() {
    myX += (int)(Math.cos(myAngle)*mySpeed);
    myY += (int)(Math.sin(myAngle)*mySpeed);
  }
}

class oddBall extends Particle {
  oddBall() {
  }
  void show() {
    fill(200);
    rect((float)myX, (float)myY, 50, 50);
  }
  void move() {
    myX += (int)(Math.cos(myAngle)*mySpeed)*0.1;
    myY += (int)(Math.sin(myAngle)*mySpeed)*0.1;
  }
}




