import 'dart:math';

class Dice{
  // Dice Functions
  static int rollD4() => Random().nextInt(4) + 1;
  static int rollD6() => Random().nextInt(6) + 1;
  static int rollD8() => Random().nextInt(8) + 1;
  static int rollD10() => Random().nextInt(10) + 1;
  static int rollD12() => Random().nextInt(12) + 1;
  static int rollD20() => Random().nextInt(20) + 1;
  
}