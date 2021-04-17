import 'package:flutter/material.dart';
import 'package:flutter_web_portfoilio/utils/const_number.dart';

class ResponsiveController {
  static bool _isMediumScreen(Size size) {
    return size.width > ConstNumber.smallThreshold &&
        size.width < ConstNumber.largeThreshold;
  }

  static bool _isLargeScreen(Size size) {
    return size.width >= ConstNumber.largeThreshold;
  }

  static ScreenSize getScreenSize(Size size) {
    if (_isLargeScreen(size)) {
      return ScreenSize.large;
    } else if (_isMediumScreen(size)) {
      return ScreenSize.medium;
    } else
      return ScreenSize.small;
  }
}

enum ScreenSize {
  small,
  medium,
  large,
}
