void setup()
{
    size(400, 400);
}
void draw()
{
  roundyround(200,200);
  roundyround(100,100);
  roundyround(300,300);
  roundyround(300,100);
  roundyround(100,300);
}
void roundyround(float x, float y) {
    fill(255,255,0);
    circle(x,y,150);
    fill(255,255,255);
    circle(x,y,100);
    fill(0,0,255);
    circle(x,y,50);
    fill(255,0,0);
    circle(x,y,10);
}
