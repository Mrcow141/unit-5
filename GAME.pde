
void setup(){
  size(800,800);

  
  p1x =  width/2;
  p1y =  height-100;
  p1d = 70;
  
  p2x = -7;
  p2y = 0;
  p2d = 70;
  
  ballx = -7;
  bally = -50;
  balld = 20;
}

void draw(){
  background(ground);
  noStroke();
  fill(tablegreen);
  rect(200,140,400,525);//big table
  fill(white);
  
  rect(200,400,400,5);
  rect(400,140,5,525);
  
  padel(p1x,p1y,p1d);
  translate(width/2,height-700);
  rotate(PI);
  padel(p2x,p2y,p2d);
  
  //ball
  fill(white);
  stroke(0.5);
  circle(ballx,bally,balld);
 
}

void padel(float x, float y, float d){
  stroke(0.3);
  fill(firstlayerpadelcolor);
  rect(x-2,y+20,15,40,5);
  fill(secondlayerpadelcolor);
  rect(x+2,y+35,7,20,5);
  fill(padelred);
  strokeWeight(2);
  circle(x+5,y,d);
  strokeWeight(1);
}
