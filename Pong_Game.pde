// import statements
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// mode framework variables
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

// pictures
PImage bpong;
PImage rpong;

PImage winF;
PImage loseF;

// paddle variables
float rx, ry, rd, lx, ly, ld;

// ball variables
float bx, by, bd;
float b2x;

// keyboard variables
boolean wkey, skey, upkey, downkey;

// ball speed variables
float vx, vy;
float v2x;

// scoring variables
int redscore, blackscore, timer;

// AI varibles
boolean AI;

// sound variables
Minim minim;
AudioPlayer pongM, loseM, awardM, introM, gameM;

// end varaibles ===================

void setup () {
 
  // visuals setup
  size(900, 700);
  mode = INTRO;
  
  // initialize paddle variables
  ry = height/2;
  rx = width;
  rd = 250;
  ly = height/2;
  lx = 0;
  ld = 250;
  
  // initialize ball variables
  bx = width/2;
  by = height/2;
  bd = 50;
  b2x = 450;
  
  // initialize keyboard variables
  wkey = skey = upkey = downkey = false;
  
  // initialize ball speed variables
  vx = random(-5, -5);
  vy = random(-1, 1);
  v2x = 3;
  
  // initialize scores
  redscore = 0;
  blackscore = 0;
  timer = 100;
  
  // intro paddles
  bpong = loadImage("black_pong.png");
  rpong = loadImage("red_pong.png");
  
  // end emoji
  winF = loadImage("win.jpg");
  loseF = loadImage("lose.jpg");
  
  // minim
  minim = new Minim(this);
  pongM = minim.loadFile("pong.mp3");
  loseM = minim.loadFile("lose.mp3");
  awardM = minim.loadFile("award.mp3");
  introM = minim.loadFile("intro.mp3");
  gameM = minim.loadFile("gameM.mp3");
  
}

// end setup =======================

void draw () {
  if (mode == INTRO) {
  intro();
  } else if (mode == GAME) {
  game();
  } else if (mode == PAUSE) {
  pause();
  } else if (mode == GAMEOVER) {
  gameover();
  } else {
  println("mode: " + "error");
  }
}

// end draw ========================
