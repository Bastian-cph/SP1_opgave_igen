PFont scoreBoard;
// calling my ball class
Ball b1;
//calling the scoreboard class
Scoreboard s1;
//calling my player array and setting making it an array of 2
Player[] players = new Player[2];

void setup()
{
  size(1500,1000);
  background(0);
  scoreBoard= loadFont("CourierNewPS-BoldMT-48.vlw");
b1 = new Ball(width/2, height/2, 50, 50);
s1 = new Scoreboard(0,0);

players[0] = new Player(25,200,50,200);
players[1] = new Player(width-75,200,50,200);
}
void draw()
{
  background(0);
  textFont(scoreBoard);
  movePlayers();
  //Forloop for collision so the ball will bounce back from the players
  for(int i=0; i<players.length; i++)
  {
    b1.playerCollision(players[i]);
  }
  
  b1.movement();
  b1.allCheck(s1);
  fill(255);
  text(s1.score1, 200, 50);
  
  //draw players to screen depending on how many arrays
  for(int i =0; i<players.length; i++)
  {
    players[i].display();
  }
  text(s1.score2, 1300, 50);

  b1.display();
  text("Score", width/2, 50);
  
}
//using simple if statements to move players up and down the y-axis
void movePlayers()
{
  if (keyPressed == true && key == 'w')
  {
    players[0].move(true);
  }
  else if (keyPressed == true && key == 's')
  {
   players[0].move(false);
  }

  if (keyPressed == true && key == 'p')
  {
    players[1].move(true);
  }
  else if (keyPressed == true && key == 'æ')
  {
    players[1].move(false);
  }
}
