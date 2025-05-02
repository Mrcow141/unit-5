int player1x,player1y,player1d;

boolean wKey,aKey,dKey,sKey;

void setup() {
  size(800,800);
  background(255,255,255);
  player1x = width/2;
  player1y = width;
  player1d = 100;
  
  
}

void draw(){
  fill(255,0,255);
  stroke(1);
  strokeWeight(5);
  circle(player1x,player1y,player1d);
  
  
    if (aKey) player1x = player1x - 5;
  if (dKey) player1x = player1x + 5;
  if (wKey) player1y = player1y- 5;
  if (sKey) player1y = player1y + 5;
  
}

void keyPressed(){
   if ( key == 'a')  aKey = true;
  if ( key == 's')  sKey = true;
  if ( key == 'w')  wKey = true;
  if ( key == 'd')  dKey = true;
}

void keyReleased(){
  if ( key == 'a')  aKey = false;
  if ( key == 's')  sKey = false;
  if ( key == 'w')  wKey = false;
  if ( key == 'd')  dKey = false;
}
