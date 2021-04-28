//import '../widgets/equation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:math_expressions/math_expressions.dart';

import '../providers/operation.dart';

class Numbers extends StatelessWidget {
  final List<String> numbers = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",
    ".",
    "="
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: numbers.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
        itemBuilder: (BuildContext ctx, int index) {
          var clipRRect = ConcatNumbers(index, numbers);
          return clipRRect;
        });
  }
}

//I split it to use provider only for cliprect

class ConcatNumbers extends StatelessWidget {
  final int index;
  final List<String> numbers;
  ConcatNumbers(this.index, this.numbers);

  @override
  Widget build(BuildContext context) {
    final eq = Provider.of<Operation>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {
          if (numbers[index] == "=") {
            Parser p = Parser();
            Expression exp = p.parse(eq.value);

            ContextModel cm = ContextModel();
            double eval = exp.evaluate(EvaluationType.REAL, cm);
            String answer = eval.toString();
            print(answer);
          } else {
            eq.add(numbers[index]);
            
            print(eq.value);
          }
          //print(eq.value);
        },
        child: Container(
          color: Colors.grey[300],
          child: Center(
            child: Text(
              numbers[index],
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
