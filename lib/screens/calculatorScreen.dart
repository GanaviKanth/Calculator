import 'package:flutter/material.dart';

import '../widgets/dialPad.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: DialPad(),
      ),
    );
  }
}
