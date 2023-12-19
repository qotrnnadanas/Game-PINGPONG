class betkanan {
  float x;
  float y;
  float w;
  float h;

  betkanan() {
    w = 20;
    h = 60;
    x = width-3*w;
    y = height/2;
  }

  void display() {
    noStroke();
    fill(255);
    rect(x, y, w, h);
  }

  void move() {                           // bet kanan dikontrol dengan tombol panah Atas dan Bawah  
    if (keyPressed) {
      if (key == CODED) {              
        if (keyCode == UP) {
          y -= level*2 ;                // Kecepatan bet yang tepat ditentukan oleh level
        }
        if (keyCode == DOWN) {
          y += level*2;                 // kecepatan bet kanan ditentukan oleh level
        }
      }
      y = constrain (y, 0, height-h);     // bet kanan dibatasi di dalam layar
    }
  }
}
