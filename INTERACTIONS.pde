
  
  
  


void keyPressed() {
  if ( key == 'a')  aKey = true;
  if ( key == 's')  sKey = true;
  if ( key == 'w')  wKey = true;
  if ( key == 'd')  dKey = true;
  
  if ( keyCode == RIGHT)  rightKey = true;
  if ( keyCode == LEFT)  leftKey = true;
  if ( keyCode == UP)  upKey = true;
  if ( keyCode == DOWN)  downKey = true;
  
  
  if (aKey) p1x = p1x - 5;
  if (dKey) p1x = p1x + 5;
  if (wKey) p1y = p1y - 5;
  if (sKey) p1y = p1y + 5;
  
    
  if (leftKey) p2x = p2x + 5;
  if (rightKey) p2x = p2x - 5;
  if (upKey) p2y = p2y + 5;
  if (downKey) p2y = p2y - 5;
}

void keyReleased() {
  if ( key == 'a')  aKey = false;
  if ( key == 's')  sKey = false;
  if ( key == 'w')  wKey = false;
  if ( key == 'd')  dKey = false;
  
  if(keyCode == RIGHT) rightKey = false;
  if(keyCode == LEFT ) leftKey = false;
  if(keyCode == UP) upKey = false;
  if(keyCode == DOWN) downKey = false;
}


void mouseReleased(){
 mode = mode + 1; 
  
}
