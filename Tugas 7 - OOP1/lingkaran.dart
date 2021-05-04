class lingkaran {
  late double _jari;
  late double _pi;

  void setjari(double value) {
    if (value < 0) {
      value *= -1;
    }
    _jari = value;
  }

  double getjari() {
    return _jari;
  }

  void setpi(double value) {
    _pi = value;
  }

  double getpi() {
    return _pi;
  }

  double hitungluas() {
    return this._pi * _jari * _jari;
  }
}
