
void setup(){
size(350,300);}
void draw(){
background(245, 181, 181);
fill(0,0,0);
noStroke();
rect(130,240,8,30);
rect(150,240,8,30);
pushMatrix();
translate(100, 100);
rotate(radians(90));
fill(219, 33, 33);
arc(50, -25, 150, 150, 0, PI/1);
popMatrix();
fill(219, 33, 33);
arc(225, 150, 200, 50, 0, PI/1);
fill(219, 33, 33);
arc(150, 150, 200, 200, 0, PI/1);
fill(173, 3, 3);
arc(170, 150, 150, 150, 0, PI/1);
fill(219, 33, 33);
arc(178, 150, 130, 130, 0, PI/1);
pushMatrix();
translate(70, 90);
rotate(radians(20));
fill(133, 0, 0);
ellipse(10,40,30,50);
popMatrix();
fill(242, 112, 73);
triangle(30,120,70,140,70,120);
fill(0, 0, 0);
ellipse(80,115,20,20);
fill(255,255,255);
ellipse(78,112,10,10);}

