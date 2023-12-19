class Score {
  int scoreR;
  int scoreL;

  Score() {
    scoreR = 0;      // sekor di mulai dari 0
    scoreL = 0;      // sekor di mulai dari 0
  }

  void display() {
    textFont(font);
    textSize(80);
    text(scoreL, width/2-width/4.6, 80);
    text(scoreR, width/2+width/6, 80);
  }
}
