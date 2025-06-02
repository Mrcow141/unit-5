





void keyPressed() {
  if ( key == 'a')  aKey = true;
  if ( key == 's')  sKey = true;
  if ( key == 'w')  wKey = true;
  if ( key == 'd')  dKey = true;

  if ( keyCode == RIGHT)  leftKey = true;
  if ( keyCode == LEFT)  rightKey = true;
  if ( keyCode == UP)  downKey = true;
  if ( keyCode == DOWN)  upKey = true;
}

void keyReleased() {
  if ( key == 'a')  aKey = false;
  if ( key == 's')  sKey = false;
  if ( key == 'w')  wKey = false;
  if ( key == 'd')  dKey = false;

  if (keyCode == RIGHT) leftKey = false;
  if (keyCode == LEFT ) rightKey = false;
  if (keyCode == UP) downKey = false;
  if (keyCode == DOWN) upKey = false;
}


void interactionsMousePressed() {

  if(mouseX>500&&mouseX<700&&mouseY>500&&mouseY<600){
   mode = GAME; 
  }
  if(mouseX>320&&mouseX<520&&mouseY>650&&mouseY<700){
   mode = RULES; 
  } 
  
}

void tactile ( int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    strokeWeight(5);
    stroke(white);
  } 
  else {
    stroke(0);
  }
}
