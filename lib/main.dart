import 'package:flutter/material.dart';

import './screens/calculatorScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.deepPurple,
        canvasColor: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx)=> CalculatorScreen(),
      },
    );
  }
}

