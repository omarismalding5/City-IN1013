float x = 200;
float y = 200;

void setup()
{
  size(400,400);
}
void draw()
{
  background(255,255,255);
  ellipse(x, y, 60, 60);
  x = x-1;
  y=y-1;
}
