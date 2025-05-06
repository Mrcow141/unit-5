

 



void apple1() {

  noStroke();
  fill(branch);
  rect(apple1x-3, apple1y - 25, 5, 15, 5);//brranch
  fill(leaf);
  ellipse(apple1x+9, apple1y-25, 15, 5);//leaf
  fill(aple);
  circle(apple1x, apple1y, apple);//round red apple
  
  
  //collison
  if (dist( player1x, player1y, apple1x, apple1y) <= player1d/2- apple/2);
  apple1x = 100000;

}
