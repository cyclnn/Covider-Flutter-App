import 'bangun_datar.dart';

class Persegi extends BangunDatar {
  var a;

  Persegi(double a) {
    this.a = a;
  }

  @override
  double convert() {
    return a * a;
  }

  double conver() {
    return a * 4;
  }
}
