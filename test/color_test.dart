import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_web_portfoilio/utils/const_color.dart';

void main() {
  group('Color', () {
    test('value should be mainColor', () {
      expect(ConstColor.mainColor(), Color(0xFF3A4B79));
    });
    test('Value should be opacity white', () {
      expect(ConstColor.mainColor(0.1), Color(0xFF3A4B79).withOpacity(0.1));
    });
    test('Value should be main dark color', () {
      expect(ConstColor.mainDarkColor(), Color(0xFF22B7CE));
    });
    test('Value should be opacity main dark color', () {
      expect(ConstColor.mainDarkColor(0.1), Color(0xFF22B7CE).withOpacity(0.1));
    });
    test('Value should be  accent', () {
      expect(ConstColor.secondColor(), Color(0xFF01A0E2));
    });
    test('Value should be opacity accent', () {
      expect(ConstColor.secondColor(0.1), Color(0xFF01A0E2).withOpacity(0.1));
    });
    test('Value should be second dark', () {
      expect(ConstColor.secondDarkColor(), Color(0xFFE7F6F8));
    });
    test('Value should be opacity second dark', () {
      expect(
          ConstColor.secondDarkColor(0.1), Color(0xFFE7F6F8).withOpacity(0.1));
    });

    test('Value should be accent', () {
      expect(ConstColor.accentColor(), Color(0xFF17B334));
    });
    test('Value should be opacity accent', () {
      expect(ConstColor.accentColor(0.1), Color(0xFF17B334).withOpacity(0.1));
    });
    test('Value should be accent dark', () {
      expect(ConstColor.accentDarkColor(), Color(0xFFADC4C8));
    });
    test('Value should be opacity accent dark', () {
      expect(
          ConstColor.accentDarkColor(0.1), Color(0xFFADC4C8).withOpacity(0.1));
    });
  });
}
