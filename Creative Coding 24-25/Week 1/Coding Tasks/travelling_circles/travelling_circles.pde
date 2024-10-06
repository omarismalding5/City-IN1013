float x = 200;  
float y = 200;
float a = 200;
float m = 200;
float b = 200;
float z = 200;
float c = 200;
float q = 200;

void setup()
{
  size(400,400);
}
void draw()
{
  background(255,255,255);
  fill(255,0,0);
  ellipse(x, y, 60, 60);
  fill(0,0,0);
  ellipse(a, m, 60, 60);
  fill(0,255,0);
  ellipse(b, z, 60, 60);
  fill(0,0,255);
  ellipse(c, q, 60, 60);
  x = x-1;
  y=y-1;
  a=a+1;
  m=m+1;
  b=b-1;
  z=z+1;
  c=c+1;
  q=q-1;
}
