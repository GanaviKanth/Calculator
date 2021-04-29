import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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

  void result() {
    Parser p = Parser();
    Expression exp = p.parse(_equation);

    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    _equation = eval.toString();
    notifyListeners();
  }

  void clear() {
    _equation = "";
    notifyListeners();
  }
}
