int a=0;
int b;
void setup()
{
  background(0);
  size(380,385);
  noLoop();
}
void draw()
{
  for(int y =0; y <= 390; y=y+20)
  {
    if (a%2==0)
       b = 25;
     else b = 0;
    for(int x =0; x < 900; x=x+55)
    {
      Brick bob = new Brick(x-b,y);
      bob.show();
      a++;
    }
  }
}
class Brick
{
  int myX, myY;
  Brick(int x, int y)
  {
    myX=x;
    myY=y;
  }
  void show()
  {
    noStroke();
    fill(255,0,0);
    rect(myX,myY,50,10);
  }
}

