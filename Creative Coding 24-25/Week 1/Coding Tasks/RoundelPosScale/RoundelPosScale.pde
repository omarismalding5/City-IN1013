void setup()            // <-- Whatever commands we put in here will be executed once.
{
    size(400, 400);
}
void draw()
{
  roundyround(200,200, 1);
  roundyround(100,100, 2);
  roundyround(300,300,0.5);
  roundyround(300,100, 2.5);
  roundyround(100,300, 1);
}
void roundyround(float x, float y, float scale) {
    fill(255,255,0);
    circle(x,y,150*scale);
    fill(255,255,255);
    circle(x,y,100*scale);
    fill(0,0,255);
    circle(x,y,50*scale);
    fill(255,0,0);
    circle(x,y,10*scale);
}
