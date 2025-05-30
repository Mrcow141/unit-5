void intro() {
  background(introbackground);
  tactile(500,500,200,100);
  textSize(70);
  fill(graywhite);
  text("PING PONG", 260, 300);//title of game
  
  
  rect(500, 500, 200, 100);//rightbox/button
  fill(oceandarkblue);
  text("1v1", 550, 570);
  
  tactile(130,500,200,100);
  fill(graywhite);
  rect(130, 500, 200, 100);//leftbutton/box
  fill(oceandarkblue);
  text("Bot",180,570);
  
  tactile(320,650,200,100);
  fill(graywhite);
  rect(320,650,200,100);
  fill(oceandarkblue);
  text("rules",345,720);
  
  
  

}
