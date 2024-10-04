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
    for (int y = 0; y <= 900; y = y + 20) {  // Limit y to canvas height
      if (a % 2 == 0)
        b = 25;
      else 
        b = 0;

      for (int x = 0; x < 900; x = x + 55) {  // Limit x to canvas width
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
}

// Class definition for Brick
class Brick {
  float x, y; // Position of the brick
  
  // Constructor to initialize position
  Brick(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }
  
  // Method to display the brick
  void show() {
    stroke(0);
    fill(200, 100, 50); // Give the brick a color
    rect(x, y, 50, 20); // Draw a rectangle as a brick
  }
}
