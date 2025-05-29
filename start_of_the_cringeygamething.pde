//jamie kwai
//2-4
//colorpallete========================
color white = #ffffff;
color tablegreen = #60894f;
color ground = #63594f;
color paddlered = #fd1d1e;
color paddlegreen = #33a148;
color firstlayerpadelcolor = #a66b24;
color secondlayerpadelcolor = #669b9f;
color green = #5ca903;
color red = #880808;
color graywhite =#d5d5d5;
color oceandarkblue = #334d5c;
color introbackground = #23292e;



//key variables======================
boolean wKey, aKey, dKey, sKey;// aswd keys
boolean rightKey, leftKey, upKey, downKey;//arrow keys



//balls
float ballx, bally, balld;

float velocityx = 0;
float velocityy = 0;

//players
float p1x, p1y, p1d;
float p2x, p2y, p2d;

//extra variables

int greenscore, redscore, timer;



int mode;

final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
int GAMEOVER;
