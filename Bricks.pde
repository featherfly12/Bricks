int a = 0;
int b;
boolean showWall = true;
boolean clearEllipses = true;  

void setup() {
  size(380, 385); 
}

void draw() {
  if (showWall) {
    background(random(100,255),random(100,255),random(100,255));  
    for (int y = 0; y <= 900; y = y + 20) {
      if (a % 2 == 0)
        b = 25;
      else
        b = 0;

      for (int x = 0; x < 900; x = x + 55) { 
        Brick bob = new Brick(x - b, y); 
        bob.show();
        a++;
      }
    }
    showWall = false;  
  }

  if (clearEllipses) {
    drawEllipse();
  }

  drawResetButton();
}

void mousePressed() {
  if (mouseX > 300 && mouseX < 370 && mouseY > 350 && mouseY < 380) {
    clearEllipses = false;  
    showWall = true;        
    a = 0;                  
    background(255);        
  }
}

void drawEllipse() {
  fill(random(100, 255), random(100, 255), 255);
  noStroke();
  ellipse(mouseX, mouseY, 30, 30);  
}

void drawResetButton() {
  fill(200);
  rect(300, 350, 70, 30);
  fill(0);
  textSize(12);
  text("Reset", 315, 370);
}

class Brick {
  int myX, myY;

  Brick(int x, int y) {
    myX = x;
    myY = y;
  }

  void show() {
    noStroke();
    fill(255, 0, 0);
    rect(myX, myY, 50, 10); 
  }
}
