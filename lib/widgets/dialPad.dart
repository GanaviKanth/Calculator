import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './operators.dart';
import './numbers.dart';
import './equation.dart';
import '../providers/operation.dart';

class DialPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Operation(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Equation(), // for the display of equation
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: Row(
              children: <Widget>[
                Container(
                  // number buttons
                  width: MediaQuery.of(context).size.width * 0.8,
                  color: Colors.black12,
                  child: Numbers(),
                ),
                Container(
                  //oerator buttons
                  width: MediaQuery.of(context).size.width * 0.2,
                  color: Colors.black12,
                  child: Operators(),
                )
              ],
            ),
          ),
          Container(
            //extra elements like braces
            height: MediaQuery.of(context).size.height * 0.08,
            color: Colors.cyan,
            child: Center(
                child: IconButton(
                    icon: Icon(Icons.arrow_upward), onPressed: () {})),
          )
        ],
      ),
    );
  }
}
