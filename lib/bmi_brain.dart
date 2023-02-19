import 'dart:math';

import 'package:flutter/material.dart';

class calculator {
  calculator({required this.Height, required this.WEIGHT});
  final int Height;
  final int WEIGHT;
  double _bmi = 0;

  String bmicalculate() {
    _bmi = WEIGHT / pow(Height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmianswer() {
    if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi >= 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String advice() {
    if (_bmi >= 25)
      return "you are fit and fine";
    else if (_bmi >= 18.5)
      return "you have maintain you weight good work ";
    else
      return "you should have a proper meal to gain some weight ";
  }
}
