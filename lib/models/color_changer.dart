import 'package:flutter/material.dart';

class ColorChanger extends ChangeNotifier {
  // String _color = "Pink";

  // String get color => _color;

  // void changeColor(String color) {
  //   _color = color;
  //   notifyListeners();
  // }

  ColorName? _color = ColorName.pink;
  ColorName? get color => _color;
  // set color(ColorName? color) {
  //   if (color != _color) {
  //     _color = color;
  //     notifyListeners();
  //   }
  // }

  /// [ColorName] value without the enum type.
  // String get colorString => enumToString(color);

  void changeColor(ColorName? color) {
    _color = color;
    notifyListeners();
  }

  /// [ColorName] get colorString with switch case:

  // String get colorString {
  //   switch (color) {
  //     case ColorName.blue:
  //       return 'blue';
  //     default:
  //       return 'pink';
  //   }
  // }
}

enum ColorName {
  blue,
  red,
  green,
  pink,
  yellow,
  black,
  purple,
  lime,
  orange,
}

/// Removes the enum type and returns the value as a String.
String enumToString(Object? e) => e.toString().split('.').last;
