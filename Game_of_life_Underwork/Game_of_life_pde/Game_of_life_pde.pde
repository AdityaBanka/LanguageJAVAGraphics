int h = 1000;
int w = 300;
int s = 20;
int dot [][] = new int [h/s][w/s];
int luck = 12;
{
  for(int i=0; i<h/s; i++){
    for(int j=0; j<w/s; j++){
      dot[i][j] = (int)random(100);
    }
  }
}
void setup(){
  size(1500,1000);
  background(0);
  fill(30, 255, 30);
  for(int i=0; i<h/s; i++){
    for(int j=0; j<w/s; j++){
      if(dot[i][j] < luck){
        rect(i*20, j*20, 20, 20);
      }
    }
  }
}
void draw(){
  if(mousePressed == true){ 
    if(mouseButton == LEFT){
      fill(30,255,30);
    }
    else{
      fill(0);
    }
      rect(mouseX-(mouseX%20), mouseY-(mouseY%20), 20, 20);
  }
}
