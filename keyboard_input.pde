//color pallette -----------------------

color darkPurple = #42213d;
color lightPurple = #bd4089;
color pink = #f51aa4;
color white = #ffffff;
color black = #000000;

//target=============================
float player1x, player1y, //postion
  player1d;//diameter


float player2x, player2y, //position
  player2d; //diameter

float ballx, bally, balld, vx, vy;

//key variables ===========================

boolean aKey, dKey, sKey, wKey;

boolean rightKey, leftKey, upKey, downKey;

//hole variables ====================
float holex, holey, holed;

//points
int points;



void setup() {
  size(600, 600);
  player1x= width/2;
  player1y = height/2;
  player1d = 100;

  player2x = width/3;
  player2y = width/3;
  player2d =100;

  ballx = width/2;
  bally = 50;
  balld = 50;


  vx = 2;
  vy = 3;
  //hole setup

  holex = width/2;
  holey = height;
  holed = 200;

  //points setup

  points = 0;
}

void draw() {
  background(darkPurple);
  fill(lightPurple);
  stroke(white);
  strokeWeight(3);
  
  //player1
  circle(player1x, player1y, player1d);
  
  textSize(40);
  textAlign(CENTER,CENTER);
  fill(255,255,255);
  text(points,player1x,player1y);
  
  //player2
  fill(lightPurple);
  circle(player2x, player2y, player2d);


  //balll
  strokeWeight(5);
  stroke(black);
  fill(white);
  circle(ballx, bally, balld);


  //hole
  strokeWeight(5);
  stroke(0);
  fill(0);
  circle(holex, holey, holed);

  if (aKey) player1x = player1x - 5;
  if (dKey) player1x = player1x + 5;
  if (wKey) player1y = player1y- 5;
  if (sKey) player1y = player1y + 5;

  if (rightKey) player2x = player2x + 5;
  if (leftKey) player2x = player2x - 5;
  if (upKey) player2y = player2y - 5;
  if (downKey) player2y = player2y + 5;

  ballx += vx;
  bally +=vy;

  if (ballx<=balld/2||ballx>=width-balld/2) vx = -vx;
  if (bally<=balld/2||bally>=height-balld/2) vy = -vy;

  if ( dist(player1x, player1y, ballx, bally) <= player1d/2 +balld/2) {

    vx = (ballx - player1x)/5;
    vy = (bally - player1y)/5;
  }

  if ( dist(player2x, player2y, ballx, bally) <= player2d/2 +balld/2) {

    vx =(ballx - player2x)/5;
    vy = (bally - player2y)/5;
  }
  //scoring a goal
  if (dist(holex, holey, ballx, bally) <= holed/2 + balld/2) {
    points = points +1;
    ballx = width/2;
    bally = balld/2;
  }
  textSize(40);
  textAlign(CENTER,CENTER);
  fill(255,255,255);
  text(points,player1x,player1y);
}

void keyPressed() {
  if ( key == 'a')  aKey = true;
  if ( key == 's')  sKey = true;
  if ( key == 'w')  wKey = true;
  if ( key == 'd')  dKey = true;

  if (keyCode == RIGHT) rightKey = true;
  if (keyCode == LEFT)  leftKey = true;
  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN)  downKey = true;
}

void keyReleased() {
  if ( key == 'a')  aKey = false;
  if ( key == 's')  sKey = false;
  if ( key == 'w')  wKey = false;
  if ( key == 'd')  dKey = false;

  if (keyCode == RIGHT) rightKey = false;
  if (keyCode == LEFT)  leftKey = false;
  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN)  downKey = false;
}
