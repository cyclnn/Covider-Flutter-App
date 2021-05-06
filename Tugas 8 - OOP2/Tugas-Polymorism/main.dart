import 'bangun_datar.dart';
import 'lingkaran.dart';
import 'segitiga.dart';
import 'persegi.dart';

void main(List<String> args) {
  BangunDatar bangdat = new BangunDatar();
  Lingkaran circle = new Lingkaran(7);
  Segitiga segi = new Segitiga(4, 8, 4, 5, 7);
  Persegi kotak = new Persegi(5);

  bangdat.convert();

  print("Luas Persegi: ${kotak.convert()}");
  print("Keliling Persegi: ${kotak.conver()}");
  print("Luas Lingkaran: ${circle.convert()}");
  print("Keliling Lingkaran: ${circle.conver()}");
  print("Luas Segitiga: ${segi.convert()}");
  print("Keliling Segitiga: ${segi.conver()}");
}
