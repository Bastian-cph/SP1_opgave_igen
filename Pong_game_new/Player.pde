
class Player
{
  //player variables
  int x;
  int y;
  int w;
  int h;
  int speed;

//player constructor
  Player(int x, int y, int w, int h)
  {
    this.x= x;
    this.y= y;
    this.w= w;
    this.h= h;
    speed= 10;
  }
  void display()
  {
    rect(x, y, w, h);  
  }
  
  void move(boolean moveUp)
  {
    if (moveUp==true)
    {
      y= y-speed;
    }
    else
    {
      y= y+speed;
    }
  }
}
