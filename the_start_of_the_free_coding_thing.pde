//color pallette
color aple = #ff003f;
color white = #ffffff;
color branch = #6b492b;
color leaf = #30B700;
color applelighttint =#df5a4c;
int player1x, player1y, player1rx, player1ry;

int player1d; //used with the colllison


int apple;
float apple1x, apple1y;

boolean wKey, aKey, dKey, sKey;

void setup() {
  size(800, 800);
  player1x = width/2;
  player1y = height/2;
  player1rx = 20;
  player1ry = 30;
  player1d = 25;
  apple = 30;
  apple1x = random(20, 780);
  apple1y =random(20, 780);
}

void draw() {
  background(white);

  fill(255, 0, 255);
  stroke(1);
  strokeWeight(5);
  ellipse(player1x, player1y, player1rx, player1ry);
  apple1();
  if (aKey) player1x = player1x - 5;
  if (dKey) player1x = player1x + 5;
  if (wKey) player1y = player1y- 5;
  if (sKey) player1y = player1y + 5;
}

void keyPressed() {
  if ( key == 'a')  aKey = true;
  if ( key == 's')  sKey = true;
  if ( key == 'w')  wKey = true;
  if ( key == 'd')  dKey = true;
}

void keyReleased() {
  if ( key == 'a')  aKey = false;
  if ( key == 's')  sKey = false;
  if ( key == 'w')  wKey = false;
  if ( key == 'd')  dKey = false;
}

void apple1() {
  
noStroke();
  fill(branch);
  rect(apple1x-3, apple1y - 25, 5, 15, 5);//brranch
   fill(leaf);
  ellipse(apple1x+9, apple1y-25 , 15, 5);//leaf
  fill(aple);
  circle(apple1x, apple1y, apple);//round red apple
}



void collision() {
  if (dist(apple1x, apple1y, player1x, player1y) <= apple/2 + player1d);
}
