import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/operation.dart';

class Operators extends StatelessWidget {
  opd(BuildContext context, String op, Operation eq) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(170),
      child: SizedBox(
          width: 70,
          height: 85,
          child: FlatButton(
              color: Colors.amber,
              onPressed: () {
                eq.add(op);
                print(eq.value);
              },
              child: Text(
                op,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    final eq = Provider.of<Operation>(context, listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(170),
          child: SizedBox(
              width: 70,
              height: 85,
              child: FlatButton(
                  color: Colors.amber,
                  onPressed: () {
                    eq.backspace();
                    print(eq.value);
                  },
                  child: Icon(Icons.backspace))),
        ),
        opd(context, "+", eq),
        opd(context, "-", eq),
        opd(context, "*", eq),
        opd(context, "/", eq),
      ],
    );
  }
}
