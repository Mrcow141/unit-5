void intro() {
  background(introbackground);
  tactile(500,500,200,100);
  textSize(70);
  fill(graywhite);
  
  text("PING PONG", 260, 300);//title of game
   rect(500, 500, 200, 100);//rightbox/button
   fill(oceandarkblue);
  text("1v1", 550, 570);
 //if(mousePressed==true){ 
 // //rect(500, 500, 200, 100);//rightbox/button
 // //fill(oceandarkblue);
 // //text("1v1", 550, 570);
 // AI = false;
 // mode = GAME;
 //}
 
  tactile(130,500,200,100);
  fill(graywhite);
  rect(130, 500, 200, 100);//leftbutton/box
  fill(oceandarkblue);
  text("Bot",180,570);
 //if (mousePressed == true){
 // //tactile(130,500,200,100);
 // //fill(graywhite);
 // //rect(130, 500, 200, 100);//leftbutton/box
 // //fill(oceandarkblue);
 // //text("Bot",180,570);
 //AI = true;
 // mode = GAME;
 //}
  
  
  tactile(320,650,200,100);
  fill(graywhite);
  rect(320,650,200,100);
  fill(oceandarkblue);
  text("rules",345,720);
  
  
  
   p1x =  width/2;
  p1y =  height-100;
  p1d = 70;

  p2x = width/2;
  p2y = 100;
  p2d = 70;

  ballx = width/2;
  bally = height/2;
  balld = 20;



  velocityx = random(-3, 3);
  velocityy = random(-3, 3);

  greenscore = redscore = 0;

  timer = 100;
  
  
  

}
