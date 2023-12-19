class Net {

  Net () {
  }

  void display() {
    // Menetapkan ketebalan garis menjadi 4
    stroke(255);
    strokeWeight(7);
    
    // Menggambar garis dari tengah layar
    line(width / 2, 0, width / 2, height);
  }
}
