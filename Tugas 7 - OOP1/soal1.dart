void main() {
  segitiga segi;
  double luassegitiga;

  segi = new segitiga();
  segi.alas = 20.0;
  segi.tinggi = 30.0;
  segi.setengah = 0.5;
  luassegitiga = segi.hitungluas();
  print(luassegitiga);
}

class segitiga {
  late double alas;
  late double tinggi;
  late double setengah;

  double hitungluas() {
    return this.setengah * alas * tinggi;
  }
}
