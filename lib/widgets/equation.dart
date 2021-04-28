//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/operation.dart';

class Equation extends StatefulWidget {
  @override
  _EquationState createState() => _EquationState();
}

class _EquationState extends State<Equation> {
  String sy;
  String sets(String s) {
    setState(() {
      sy = s;
    });
    return sy;
  }

  @override
  Widget build(BuildContext context) {
    final eq = Provider.of<Operation>(context, listen: false);
    String val = sets(eq.value);
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.height * 1,
      color: Colors.white,
      child: Text(val),
    );
  }
}
