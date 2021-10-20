

void setup()
{
  size(1080, 720);
  background(0);
}

void draw()
{
    if(mousePressed == true){
      
      fill(30,255,30);
      rect(mouseX-(mouseX%20), mouseY-(mouseY%20), 20, 20);
    }
}
