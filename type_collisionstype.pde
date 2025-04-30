color darkPurple = #42213d;
color lightPurple = #bd4089;
color pink = #f51aa4;
color white = #ffffff;
color black = #000000;



//ballvariables

float ballx, bally, //ball position
  balld;//ball diameter
float vx, vy;//ball velocity

float gx, gy;//gravityx,gravityy

void setup() {
  size(600, 600, P2D);
  background(white);
  ballx=width/2;
  bally=width/2;
  balld=50;

  //movement
  vx = 4;
  vy = 5;

  gx=0;
  gy = 1;
  
  vx = vx +gx;
  vy = vy +gy;
}

void draw() {
  fill(lightPurple);
  background(white);
  stroke(black);
  strokeWeight(5);
  circle(ballx, bally, balld);
  ballx += vx;
  bally +=vy;



vx = vx + gx;
vy = vy + gy;
  //bouncting off walls
  if (bally <= 0 +balld/2){ //top
    vy = vy * -0.95;
    bally = balld/2;
  }
  
  if(bally >= height-balld/2){ //down
  vy = vy* -0.95;
  bally = height - balld/2;
    
  }
  
  
 if(ballx >= width-balld/2){//left
    vx = vx*-0.95;
    ballx = width -balld/2;
  }
  
  if (ballx <= 0 + balld/2){//right
    vx = vx * -0.95;
    ballx = balld/2;
  }
}
