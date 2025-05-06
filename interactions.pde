


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

void mosueReleased() {
  
  mode = mode +1;
}
