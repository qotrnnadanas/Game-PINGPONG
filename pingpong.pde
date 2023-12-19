import processing.sound.*;  // Import Processing Sound library
SoundFile bet;
SoundFile sides;
SoundFile point;

PFont font;

Ball ball;
Score score;
Net net;
betkanan betR;
betkiri betL;
int level = 2;    // Level menentukan kecepatan bola

void setup() {
  // seting ukuran lapangan
  size(1000, 600);
  // membuat sound files
  bet = new SoundFile(this, "bet.wav");
  sides = new SoundFile(this, "pantul.wav");
  point = new SoundFile(this, "point.wav");
  //membuat font file
  font = createFont("LeelawadeeUI-Bold-48", 48);
  // Initialize objects
  ball = new Ball();
  score = new Score();
  net = new Net();
  betR = new betkanan();
  betL = new betkiri();
}

void draw() {
  background(0, 150, 0);
  score.display();
  net.display();
  ball.display();
  ball.move(betR, betL);
  betL.display();
  betL.move();
  betR.move();
  betR.display();       
}
