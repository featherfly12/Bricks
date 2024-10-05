int a = 0;
int b;
boolean showWall = true;
boolean clearEllipses = true;  // Ellipses will appear initially
boolean ellipsesFollowMouse = true; // Toggle for ellipses to follow the mouse

void setup() {
  size(380, 385); // Canvas size
}

void draw() {
  if (showWall) {
    background(255);  // Clear the background initially
    // Draw the brick wall
    for (int y = 0; y <= 900; y = y + 20) {
      if (a % 2 == 0)
        b = 25;
      else
        b = 0;

      for (int x = 0; x < 900; x = x + 55) { // Loop adjusted to fit canvas
        Brick bob = new Brick(x - b, y); // Correct brick positioning
        bob.show();
        a++;
      }
    }
    showWall = false;  // Draw the wall only once
  }

  // Only draw ellipses if clearEllipses is true and ellipses are following the mouse
  if (clearEllipses && ellipsesFollowMouse) {
    drawEllipse();
  }

  // Draw the reset button
  drawResetButton();
}

void mousePressed() {
  // Check if the mouse press is inside the reset button
  if (mouseX > 300 && mouseX < 370 && mouseY > 350 && mouseY < 380) {
    clearEllipses = false;  // Stop drawing ellipses
    showWall = true;        // Redraw the brick wall
    a = 0;                  // Reset the brick row counter
    background(255);        // Clear the canvas
  } else {
    // If clicking anywhere else, toggle whether ellipses follow the mouse
    ellipsesFollowMouse = !ellipsesFollowMouse;


  }
}

void drawEllipse() {
  fill(random(100, 255), random(100, 255), 255);
  noStroke();
  ellipse(mouseX, mouseY, 30, 30);  // Draw ellipse at mouse position
}

void drawResetButton() {
  // Draw the reset button as a rectangle
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
    rect(myX, myY, 50, 10); // Brick size
  }
}
