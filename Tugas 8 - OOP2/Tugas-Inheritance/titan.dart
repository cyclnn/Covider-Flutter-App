class Titan {
  late int _powerpoint;

  int get powerpoint => _powerpoint;
  set powerpoint(int value) {
    if (value <= 5) {
      value = 5;
    }
    _powerpoint = value;
  }
}
