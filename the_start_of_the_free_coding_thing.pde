//color pallette
color aple = #ff003f;
color white = #ffffff;
color branch = #6b492b;
color leaf = #30B700;
color applelighttint =#df5a4c;
int player1x, player1y, player1rx, player1ry;

int player1d; //used with the colllison


int apple;
float apple1x, apple1y;

boolean wKey, aKey, dKey, sKey;


//mode Framework int mode;
int mode;

final int intro =0;
final int gamme = 1;
final int pause =2;
final int gameover= 3;

void setup() {
  size(800, 800);
  player1x = width/2;
  player1y = height/2;
  player1rx = 20;
  player1ry = 30;
  player1d = 25;
  apple = 30;
  apple1x = random(20, 780);
  apple1y =random(20, 780);
}



 void draw() {
    if (mode == intro) {
      intro();
    } else if (mode ==gamme) {
      game;
    } else if (mode== gameover) {
      gameOver();
    } else {
      println("ERROR! Mode is " + mode);
    }
    
    
    fill(255, 0, 255);
  stroke(1);
  strokeWeight(5);
  circle(player1x, player1y, player1d);
  apple1();
  if (aKey) player1x = player1x - 2;
  if (dKey) player1x = player1x + 2;
  if (wKey) player1y = player1y- 2;
  if (sKey) player1y = player1y + 2;
  }


  
  
