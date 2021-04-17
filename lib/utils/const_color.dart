import 'package:flutter/material.dart';

class ConstColor {
  static Color _mainColor = Color(0xFF3A4B79);
  static Color _mainDarkColor = Color(0xFF22B7CE);
  static Color _secondColor = Color(0xFF01A0E2);
  static Color _secondDarkColor = Color(0xFFE7F6F8);
  static Color _accentColor = Color(0xFF17B334);
  static Color _accentDarkColor = Color(0xFFADC4C8);

  static Color mainColor([double opacity]) {
    if (opacity == null) {
      return _mainColor;
    }
    return _mainColor.withOpacity(opacity);
  }

  static Color secondColor([double opacity]) {
    if (opacity == null) {
      return _secondColor;
    }
    return _secondColor.withOpacity(opacity);
  }

  static Color accentColor([double opacity]) {
    if (opacity == null) {
      return _accentColor;
    }
    return _accentColor.withOpacity(opacity);
  }

  static Color mainDarkColor([double opacity]) {
    if (opacity == null) {
      return _mainDarkColor;
    }
    return _mainDarkColor.withOpacity(opacity);
  }

  static Color secondDarkColor([double opacity]) {
    if (opacity == null) {
      return _secondDarkColor;
    }
    return _secondDarkColor.withOpacity(opacity);
  }

  static Color accentDarkColor([double opacity]) {
    if (opacity == null) {
      return _accentDarkColor;
    }
    return _accentDarkColor.withOpacity(opacity);
  }
}
