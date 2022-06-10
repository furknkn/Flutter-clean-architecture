import 'package:flutter/material.dart';

//size ilk sayfada hesaplanıp ScreenSize sınıfına aktarılacak
class ScreenSize {
  static final ScreenSize _instance = ScreenSize._init();
  ScreenSize._init();

  factory ScreenSize() {
    return _instance;
  }

  Size? screenSize;

  double getHeightPercent(double percent) {
    return screenSize!.height * percent;
  }

  double getWidthPercent(double percent) {
    return screenSize!.width * percent;
  }

  set setScreenSize(Size size) => screenSize = size;
}
