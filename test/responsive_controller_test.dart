import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_web_portfoilio/utils/const_number.dart';
import 'package:flutter_web_portfoilio/utils/responsive_controller.dart';
import 'package:mockito/mockito.dart';

mixin MockMediaQuery implements Mock, MediaQuery {}

void main() {
  group('responsive control checker', () {
    test('test getScreenSize method for less than small threshold', () {
      Size size = new Size(ConstNumber.smallThreshold - 100, 100);
      expect(ResponsiveController.getScreenSize(size), ScreenSize.small);
    });
    test('test getScreenSize function for equal with small threshold', () {
      Size size = new Size(ConstNumber.smallThreshold, 100);
      expect(ResponsiveController.getScreenSize(size), ScreenSize.small);
    });

    test(
        'test getScreenSize function for bigger than small threshold and less than large threshold',
        () {
      Random rnd = new Random();
      int min = ConstNumber.smallThreshold.toInt() + 1,
          max = ConstNumber.largeThreshold.toInt() - 1;
      int r = min + rnd.nextInt(max - min);
      Size size = new Size(r.toDouble(), 100);
      expect(ResponsiveController.getScreenSize(size), ScreenSize.medium);
    });

    test('test getScreenSize function for equal with large threshold ', () {
      Size size = new Size(ConstNumber.largeThreshold, 100);
      expect(ResponsiveController.getScreenSize(size), ScreenSize.large);
    });
    test('test isLargeScreen function for largest than large threshold ', () {
      Size size = new Size(ConstNumber.largeThreshold + 1, 100);
      expect(ResponsiveController.getScreenSize(size), ScreenSize.large);
    });
  });
}
