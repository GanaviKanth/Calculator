import 'package:flutter/material.dart';

class Operation with ChangeNotifier {
  String _equation = "";

  String get value {
    return _equation;
  }

  void add(String text) {
    _equation = _equation + text;
    notifyListeners();
  }

  void backspace() {
    int length = _equation.length;
    if (length > 0) _equation = _equation.substring(0, length - 1);
    notifyListeners();
  }
}
