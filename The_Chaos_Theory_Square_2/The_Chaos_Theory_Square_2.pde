float a[][] = new float [4][2];
float x=0, y=0;
float z = 2;
int old=0;
int n;
boolean t=false;
{

  a[0][0] = 250;
  a[1][0] = 750;
  a[2][0] = 750;
  a[3][0] = 250;

  a[0][1] = 250;
  a[1][1] = 250;
  a[2][1] = 750;
  a[3][1] = 750;


  {

    for ( int i = 0; i<4; i++)
    {
      x = x + a[i][0];
      y=y+a[i][1];
    }


    x=(x/4)+random(-20, 20);
    y=(y/4)+random(-20, 20);
  }
}
void setup()
{
  size( 1000, 1000);

  circle(250, 250, 10);
  circle(750, 250, 10);
  circle(750, 750, 10);
  circle(250, 750, 10);
}

void draw()
{
  

  while (t==false)
  {
    n = (int)random(0, 4);
    if (old==0 && n==2)
      t= false;
   else if (old==1 && n==3)
      t= false;
   else if (old==2 && n==0)
      t= false;
   else if (old==3 && n==1)
      t= false;
    else 
    t=true;
  }
  old = n;

  x = ( x + a[n][0] ) /(z);
  y = ( y + a[n][1] ) /(z);
  circle(x, y, 1);

  //z= z-0.0001;
  
  t = false;
}
