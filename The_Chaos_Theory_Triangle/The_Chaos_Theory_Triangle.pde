float a[][] = new float [3][2];
float x=0, y=0;
float z = 2;
{

  a[0][0] = 500;
  a[1][0] = 800;
  a[2][0] = 200;
  a[0][1] = 300;
  a[1][1] = 700;
  a[2][1] = 700;
  
  

  {

    for ( int i = 0; i<3; i++)
    {
      x = x + a[i][0];
      y=y+a[i][1];
    }


    x=(x/3)+random(-20, 20);
    y=(y/3)+random(-20, 20);
  }
}
void setup()
{
  size( 1000, 1000);
  
  circle(500, 300, 10);
  circle(800, 700, 10);
  circle(200, 700, 10);
}

void draw()
{
  int n = (int)random(0, 3);
  
  x = ( x + a[n][0] ) /(z);
  y = ( y + a[n][1] ) /(z);
  circle(x, y, 1);
 // z= z-0.0001;
}
