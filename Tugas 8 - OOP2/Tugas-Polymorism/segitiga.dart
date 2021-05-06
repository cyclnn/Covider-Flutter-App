import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
  var alas;
  var tt;
  var aa;
  var bb;
  var cc;

  Segitiga(double alas, double tt, double aa, double bb, double cc) {
    this.alas = alas;
    this.tt = tt;
    this.aa = aa;
    this.bb = bb;
    this.cc = cc;
  }

  @override
  double convert() {
    return 0.5 * alas * tt;
  }

  double conver() {
    return aa + bb + cc;
  }
}
