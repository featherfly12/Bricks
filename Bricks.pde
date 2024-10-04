int a = 0;
int b;
boolean showWall = true;
boolean clearEllipses = false; 

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
}

void mousePressed() {
  clearEllipses = !clearEllipses;  
  if (!clearEllipses) {
    showWall = true;  
    a = 0;  
    background(255);  
  }
}

void drawEllipse() {
  fill(random(100, 255), random(100, 255), 255);
  noStroke();
  ellipse(mouseX, mouseY, 30, 30);  
