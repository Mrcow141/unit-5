void gameover() {
  gradient1();
  //fill(0);
  //text("u lost twin :( ", 300,300);
  fill(0);
  tactile(300, 400, 200, 200);
  rect(300, 400, 200, 200);
  fill(255);
  text("back to intro", 310, 500);

  if (greenscore == 3) {
    fill(green);
    text("green wins", 200, 200);
    fill(red);
    text("red lost", 400, 200);
  }


  if (redscore == 3) {
    fill(green);
    text("green lost", 200, 200);
    fill( red);
    text("red wins", 400, 200);
  }
}
