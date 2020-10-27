import 'package:flutter/material.dart';

class AqiTools {
  int value;
  var enter;

  AqiTools(this.enter) {
    value = 0;
  }

  get api => null;

  set currentApiValue(int n) {
    value = n;
  }

  static Color getColor(int item) {
    if (item <= 50) return Colors.green;
    if (item < 50 && item >= 100) return Colors.yellow;
    if (item < 100 && item >= 150) return Colors.orange;
    if (item < 150 && item >= 200) return Colors.red;
    if (item < 200 && item >= 250)
      return Colors.purple;
    else
      return Colors.black;
  }
}
