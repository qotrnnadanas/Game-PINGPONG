class Ball {
  float x;
  float y;
  float w;
  float h;
  float speedX;
  float speedY;

  Ball () {
    x = width/2;
    y = height/2;
    w = 20;
    h = 20;
    speedX = 2*level;
    speedY = level;
  }

  void display() {
    ellipseMode(CENTER);
    noStroke();
    fill(#FC7F00);
    ellipse(x, y, w, h);  // Menggunakan ellipse() untuk menggambar bola
  }

  void move(betkanan pR, betkiri pL) {
    x += speedX;
    y += speedY;

    if (x+w >= pR.x && x <= pR.x + pR.w && y+w >= pR.y && y <= pR.y + pR.h) {  
      bet.play();
      speedX *= -1;
    }

    if (x >= pL.x && x < pL.x+pL.w && y+h >= pL.y && y <= pL.y + pL.h) {   
      bet.play();
      speedX *= -1;
    }

    if (y <= 0 || y+h >= height) {    // Bola mengenai bagian atas atau bawah layar
      sides.play();
      speedY *= -1;
    }

    if (x > width) {     // Jika bola meninggalkan layar dari sisi kanan
      point.play();
      x = width/2;           // Bola dikembalikan ke tengah lebar layar
      score.scoreL ++;       // Skor kiri bertambah satu
    }

    if (x < 0) {             // Jika bola meninggalkan layar dari sisi kiri
      point.play();
      x = width/2;           // Bola dikembalikan ke tengah lebar layar
      score.scoreR ++;       // skor kanan bertambah satu
    }
  }
}
