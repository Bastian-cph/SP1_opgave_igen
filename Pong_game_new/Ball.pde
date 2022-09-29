//In this class i've made the ball by declaring all of its coordinates, and by using if statements to make it move across the screen
class Ball
{
  //declaring variables to the ball
  float ellipseX;
  float ellipseY;
  float ellipseW;
  float ellipseH;

  int speedX;
  int speedY;

  color c;

  boolean moveR= true; //hvis falskt rykker den venstre i stedet
  boolean moveD= true; //hvis falskt rykker den op i stedet

  //constructor
  Ball(float tempellipseX, float tempellipseY, float tempellipseW, float tempellipseH)
  {
    ellipseX= tempellipseX;
    ellipseY= tempellipseY;
    ellipseW= tempellipseW;
    ellipseH= tempellipseH;
    speedX= 5;
    speedY= 5;
    c = (255);
  }
  //making a display to make the void draw easier to read
  void display()
  {
   ellipseMode(CENTER);
  ellipse(ellipseX, ellipseY, ellipseW, ellipseH); 
  }
  //using a function to make the ball move in different directions and add speed
  void movement()
  {
    if (moveR == true)
    {
      ellipseX = ellipseX + speedX;
    } else
    {
      ellipseX = ellipseX - speedX;
    }
    if (moveD == true)
    {
      ellipseY = ellipseY + speedY;
    } else
    {
      ellipseY = ellipseY - speedY;
    }
    if (ellipseY< 25 )
    {
      moveD= true;
    }
    if (ellipseY> height-25)
    {
      moveD= false;
    }
  }
  // allcheck checks if the ball goes out of bounds and thereby it will give a point to one of the players
  void allCheck( Scoreboard scoreboard)
  {
    if (ellipseX >= width-25)
    {
      scoreboard.score1++;
      ellipseX = width/2;
      ellipseY = height/2;
      
    }
    if (ellipseX <= 0)
    {
      scoreboard.score2++;
      ellipseX = width/2;
      ellipseY = height/2;
      
    }
  }
  // playercollision is made to check if the ellipse is coliding with either of the players
  //by checking if the ellipse+ the radius of the ellipse is bigger than the players p.x coordinate
  void playerCollision(Player p)
  {


    if (ellipseX+25> p.x && ellipseX+25 <= p.x+50 && ellipseY > p.y && ellipseY < (p.y+200))
    {

      moveR= !moveR;
    }
    
  }
}
