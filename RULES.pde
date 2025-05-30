void rules(){
 gradient();  
 fill(red);
  text("to move the red paddle use the 'wasd' keys",50,100);
  text("player number 1 is the red paddle", 50,150);
  fill(green);
  text("to move the green paddle use the 'arrow' keys",50,200);
  text("player number 2 is the green paddle",50,250);
  fill(darkelixer);
  textSize(70);
  text("objective: first to 11 points",27,350);
  textSize(40);
  text("can score on self, just be better fr fr",50,430);
 
tactile(700,50,100,100);
  rect(700,50,100,100);
  
  
}

void rulesMousePressed() {
  if(mouseX>700&&mouseX<800&&mouseY>50&&mouseY<150){
   mode = INTRO; 
  } 
}
