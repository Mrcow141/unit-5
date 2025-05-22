//jamie kwai 
//2-4
//colorpallete========================
color white = #ffffff;
color tablegreen = #60894f;
color ground = #63594f;
color padelred = #fd1d1e;
color padelgreen = #33a148;
color firstlayerpadelcolor = #a66b24;
color secondlayerpadelcolor = #669b9f;




//key variables======================
boolean wKey,aKey,dKey,sKey;// aswd keys
boolean rightKey,leftKey,upKey,downKey;//arrow keys



//balls
float ballx,bally,balld;

float velocityx = 2;
float velocityy = 2;

//players
float p1x,p1y,p1d;
float p2x,p2y,p2d;

//extra variables


int mode;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
