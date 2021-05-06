import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
  var rr;

  Lingkaran(double rr) {
    this.rr = rr;
  }

  @override
  double convert() {
    return 3.14 * rr * rr;
  }

  double conver() {
    return 2 * 3.14 * rr;
  }
}
