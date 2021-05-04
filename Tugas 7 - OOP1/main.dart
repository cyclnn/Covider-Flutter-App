import 'lingkaran.dart';

void main(List<String> args) {
  lingkaran lingkar;
  double luaslingkar;

  lingkar = new lingkaran();
  lingkar.setjari(7.0);
  lingkar.setpi(3.14);

  luaslingkar = lingkar.hitungluas();
  print(luaslingkar);
}
