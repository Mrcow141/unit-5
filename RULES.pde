void rules(){
 gradient();  
 fill(red);
  text("to move the red paddle use the 'wasd' keys",50,100);
  text("player number 1 is the red paddle", 50,150);
  fill(green);
  text("to move the green paddle use the 'arrow' keys",50,200);
  text("player number 2 is the green paddle",50,250);
  fill(white);
  textSize(70);
  text("objective: first to 11 points",27,350);
  textSize(40);
  text("can score on self,so just be better fr fr",50,430);
  fill(green);
  text("the green number is the greenscore",50,480);
  fill(red);
  text("the red number is the redscore",50,530);
  fill(white);
  //text("the other number is the timer",50,580);
 
tactile(700,50,100,100);
  fill(darkelixer);
  rect(700,50,100,100,3);
  image(exit,700,50,100,100);
  
  
}

void rulesMousePressed() {
  if(mouseX>700&&mouseX<800&&mouseY>50&&mouseY<150){
   mode = INTRO; 
  } 
}
