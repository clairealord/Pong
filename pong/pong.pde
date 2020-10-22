//Claire Lord 
//Block 1-2 A
//Oct. 16, 2020

// TURN YOUR VOLUME DOWN BEFORE PLAYING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

//MINIM --------------------
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer leftpaddle, rightpaddle, score, wall, bruh, error;
AudioPlayer theyaskyou, thomas, wow, directedby, swamp, french;
AudioPlayer stonks, russia, a, elevator;
//MODE FRAMEWORK --------------------
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVERRIGHT = 4;
final int GAMEOVERLEFT  = 5;

//ENTITTY VARIABLES --------------------

float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float ballvx, ballvy;

float d, r, R, L, D;

//keyboard variables
boolean wkey, skey, upkey, downkey;
boolean AI;


//colour pallete
color grey       = #525854;
color white      = #EEEBE6;
color green      = #B2DE62;
color darkBrown  = #382816;
color lightBrown = #5E5642;
color blue       = #2BFEF0;
color red        = #2BFEF0;

//scoring
int leftscore, rightscore, timer;

PImage shrekcool;

void setup() {
  size (800, 600);
  mode = INTRO;
  
  //INITIALIZE PADDLES
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //INITIALIZE BALL
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  ballvx = random (-5, 5);
  ballvy = random (-5, 5);
 
  //INITIALIZE SCORE
  rightscore = leftscore = 0;
  timer = 100;
  
  //INITIALIZE KEYBOARD VARIABLES
  wkey = skey = upkey = downkey = false;
  
  //INITIALIZE MINIM
  minim = new Minim(this);
  leftpaddle = minim.loadFile("leftpaddle.wav");
  rightpaddle = minim.loadFile("rightpaddle.wav");
  score = minim.loadFile("score.wav");
  wall = minim.loadFile("wall.wav");
  bruh = minim.loadFile("bruh.mp3");
  theyaskyou = minim.loadFile("theyaskyou.mp3");
  thomas = minim.loadFile("thomas.mp3");
  wow = minim.loadFile("wow.mp3");
  directedby = minim.loadFile("directedby.mp3");
  swamp = minim.loadFile("swamp.mp3");
  error = minim.loadFile("error.mp3");
  french = minim.loadFile("french.mp3");
  stonks = minim.loadFile("stonks.mp3");
  russia = minim.loadFile("russia.mp3");
  a = minim.loadFile("a.mp3");
  elevator = minim.loadFile("elevator.mp3");
  
  shrekcool = loadImage("shrekcool.jpg");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVERRIGHT) {
    gameoverright();
  } else if (mode == GAMEOVERLEFT) {
    gameoverleft();
  } else {
    println("Mode error: "+ mode);
  }
}
