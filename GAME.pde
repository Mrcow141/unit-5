
void setup() {
  size(800, 800);
exit = loadImage("exit.png");

  p1x =  width/2;
  p1y =  height-100;
  p1d = 70;

  p2x = width/2;
  p2y = 100;
  p2d = 70;

  ballx = width/2;
  bally = height/2;
  balld = 20;



  velocityx = random(-3,3);
  velocityy = random(-3,3);
  
  greenscore = redscore = 0;
  
  mode = INTRO;
  
  timer = 100;
}

void draw() {
  background(ground);
  noStroke();
  fill(ground);
  rect(0, 0, width, height/2);//top half of the proj
  rect(0, 400, width, height/2);//bottom half of the proj
  fill(tablegreen);
  rect(200, 140, 400, 525);//big table

  fill(white);
  rect(200, 400, 400, 5);
  rect(400, 140, 5, 525);
  fill(ground);
  rect(0, 0, 100, 400);//leftside of the proj /outs/first half
  rect(0, 400, 100, 800);//leftsde of the proj/outs/second half
  rect(800, 0, -100, 400);//rightside of the proj/outs/first half
  rect(800, 400, -100, 800);//rightside of the proj/outs/second half
  rect(0, 0, 800, 50);//top side of the proj/outs
  rect(00, 750, 800, 75);//bottom side of the proj/outs


  paddle(p1x, p1y, p1d, paddlered, 0);
  paddle(p2x, p2y, p2d, paddlegreen, PI);

  //fill(255);
  //circle(p2x-4, p2y, p2d);
  //circle(p1x+4, p1y, p1d);

  //ball

  fill(white);
  stroke(0.5);
  circle(ballx, bally, balld);




  if (aKey) p1x = p1x - 4;
  if (dKey) p1x = p1x + 4;
  if (wKey) p1y = p1y - 4;
  if (sKey) p1y = p1y + 4;

  if (leftKey) p2x = p2x + 4;
  if (rightKey) p2x = p2x - 4;
  if (upKey) p2y = p2y + 4;
  if (downKey) p2y = p2y - 4;

  p1x = constrain(p1x, 28, 760);
  p1y = constrain(p1y, 439, 765);
  p2x = constrain(p2x, 39, 770);
  p2y = constrain(p2y, 36, 365);

  if(timer<0){
  ballx += velocityx;
  bally += velocityy;
  }
  
  if(mode == GAME){
    timer -= 1;
  }




  //red padel/player 1
  if (dist(p1x, p1y, ballx, bally)<= p1d/2 + balld/2) {
    velocityx = (ballx - p1x)/10;
    velocityy = (bally - p1y)/10;
  }

  //greenpadel/player 2
  if (dist(p2x, p2y, ballx, bally)<=p2d/2 + balld/2) {
    velocityx = (ballx- p2x)/10;
    velocityy = (bally- p2y)/10;
  }
  //scoring
  if (bally<50) {//top scoring
    redscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    velocityx = random(-3,3);
    velocityy = random(-3,3);
  }
  if (bally>750) {//bottom scoring
    greenscore++;
      ballx = width/2;
    bally = height/2;
    timer = 100;
    velocityx = random(-3,3);
    velocityy = random(-3,3);
  }

  if (ballx<100&&bally<400) {//1st hlaf of left side top side
    redscore++;
      ballx = width/2;
    bally = height/2;
    timer = 100;
    velocityx = random(-3,3);
    velocityy = random(-3,3);
  }
  if (ballx<100&&bally>400) {//2ndhalf of left side out bottom side
    greenscore++;
      ballx = width/2;
    bally = height/2;
    timer = 100;
    velocityx = random(-3,3);
    velocityy = random(-3,3);
  }
  if (ballx>700&&bally<400) {//1sthalf of right side out top side
    redscore++;
      ballx = width/2;
    bally = height/2;
    timer = 100;
    velocityx = random(-3,3);
    velocityy = random(-3,3);
  }
  if (ballx>700&&bally>400) {//2nd half of righ side bottom side
    greenscore++;
      ballx = width/2;
    bally = height/2;
    timer = 100;
    velocityx = random(-3,3);
    velocityy = random(-3,3);
  }


  //outs
  if (ballx>0 && ballx<100 && bally>0 && bally<400) {//leftout first half
    ballx =width/2;
    bally =height/2;
    velocityx = random(3,-3);
    velocityy = random(3,-3);
  }
  if (ballx>0 && ballx<100 && bally>400 && bally<800) {//leftout second half
    ballx =width/2;
    bally =height/2;
    velocityx = random(3,-3);
    velocityy = random(3,-3);
  }
  if (ballx>700 && ballx<800 && bally>0 && bally<400) {//rightout first half
    ballx =width/2;
    bally =height/2;
    velocityx = random(3,-3);
    velocityy = random(3,-3);
  }
  if (ballx>700 && ballx<800 && bally>400 && bally<800) {//rightout second half
    ballx =width/2;
    bally =height/2;
    velocityx = random(3,-3);
    velocityy = random(3,-3);
  }
  if (ballx>0 && ballx<800 && bally>0 && bally<50) {//topout
    ballx =width/2;
    bally =height/2;
    velocityx = random(3,-3);
    velocityy = random(3,-3);
  }
  if (ballx>0 && ballx<800 && bally>750 && bally<825) {//bottomout
    ballx =width/2;
    bally =height/2;
    velocityx = random(3,-3);
    velocityy = random(3,-3);
  }


  //scoreboard
  textSize(35);
  fill(green);
  text(greenscore, width/4, 100);
  fill(red);
  text(redscore, 3*width/4, 100);
  text(timer,width/2,30);
  //timer -= 1;
  
  

  //mode framework
  if (mode ==INTRO) {
    intro();
  } else if (mode == PAUSE) {
    pausescreen();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if(mode == RULES){
    rules();  
  } else { 
    println("Mode Error: Mode is" + mode);
  }
  if (greenscore == 11 || redscore == 11) {
    gameover();
  }
  
}

void mousePressed() {
  if(mode == INTRO) {
    interactionsMousePressed();
  } else if(mode == RULES) {
    rulesMousePressed();
  }
}


void paddle (float x, float y, float d, color c, float angle) {
  pushMatrix();
  translate(x, y);
  rotate(angle);
  stroke(0.3);
  fill(firstlayerpadelcolor);
  rect(-2, +20, 15, 40, 5);
  fill(secondlayerpadelcolor);
  rect(+2, +35, 7, 20, 5);
  fill(c);
  strokeWeight(2);
  circle(+5, 0, d);
  strokeWeight(1);
  popMatrix();
}



void gradient() {
  int y = 0;
  float transparency = 0;

  while (y < height) {
    transparency = map(y, 0, 1200, 0, 1);
    color p = lerpColor(toppartofgradient, bottompartofgradient, transparency);
    stroke(p);
    line(0, y, width, y);

    y = y + 1;
  }
}
void gradient1() {
  int y = 0;
  float transparency = 0;

  while (y < height) {
    transparency = map(y, 0, 1200, 0, 1);
    color p = lerpColor(toppartofgradient1, bottompartofgradient1, transparency);
    stroke(p);
    line(0, y, width, y);

    y = y + 1;
  }
}
