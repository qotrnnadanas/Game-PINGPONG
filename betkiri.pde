class betkiri {
  float x;
  float y;
  float w;
  float h;

  betkiri() {
    w = 20;
    h = 60;
    x = 2*w;
    y = height/2;  // bet kiri selalu dimulai di tengah layar
  }

  void display() {
    noStroke();
    fill(255);
    rect(x, y, w, h);
  }

  void move() {                                 // bet kiri dikontrol dengan tombol W dan S   
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        y -= level*2 ;                        // Kecepatan bet kiri ditentukan oleh level
      }
      if (key == 's' || key == 'S') {
        y += level*2;                         // Kecepatan bet kiri ditentukan oleh level
      }
    }
    y = constrain (y, 0, height-h);             // bet kiri dibatasi di dalam layar
  }
}
