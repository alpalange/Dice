Die one;
int dotcount;
int sum = 0;
void setup()
{
  noLoop();
  size(450,450);
}
void draw()
{
  background(180,210,190);
  for(int yspacing = 22; yspacing < 450; yspacing +=45){
    for(int xspacing = 22; xspacing < 450; xspacing +=45){
      one = new Die(xspacing,yspacing);
      one.show();
      one.roll();
      sum = sum+dotcount;
    }
  }
  fill(239,255,237,95);
  noStroke();
  rect(150,210,150,30);
  fill(0);
  textSize(15);
  text("The total is "+sum, 165,230);
}//end draw
void mousePressed()
{
  redraw();
  sum = 0;
}
class Die //models one single dice cube
{
  int dX, dY, dots; //variable declarations here
  
  Die(int x, int y) //constructor
  {
    dX = x;
    dY = y;//variable initializations here
  }
  void roll()
  {
    fill(0);
    stroke(1);
    dots = (int) (Math.random()*6)+1;
    
    if (dots == 1){
      ellipse(dX, dY, 5,5);
      dotcount = 1;
    }
    else if (dots == 2){
      ellipse(dX-8, dY-8, 5,5);
      ellipse(dX+8, dY+8, 5,5);
      dotcount = 2;
    }
    else if (dots == 3){
      ellipse(dX, dY, 5,5);
      ellipse(dX-10, dY-10, 5,5);
      ellipse(dX+10, dY+10, 5,5);
      dotcount = 3;
    }
    else if (dots == 4){
      ellipse(dX+8, dY+8, 5,5);
      ellipse(dX-8, dY+8, 5,5);
      ellipse(dX+8, dY-8, 5,5);
      ellipse(dX-8, dY-8, 5,5);
      dotcount = 4;
    }
    else if (dots == 5){
      ellipse(dX, dY, 5,5);
      ellipse(dX+10, dY+10, 5,5);
      ellipse(dX-10, dY+10, 5,5);
      ellipse(dX+10, dY-10, 5,5);
      ellipse(dX-10, dY-10, 5,5);
      dotcount = 5;
    }
    else {
      ellipse(dX-8, dY, 5,5);
      ellipse(dX-8, dY-12, 5,5);
      ellipse(dX-8, dY+12, 5,5);
      ellipse(dX+8, dY, 5,5);
      ellipse(dX+8, dY-12, 5,5);
      ellipse(dX+8, dY+12, 5,5);
      dotcount = 6;
    }
  }//end roll
  void show()
  {
    noStroke();
    fill(200,230,200);
    square(dX-21, dY-21, 40);
    fill(145,185,140);
    square(dX-19,dY-19,40);
  }
}
