import 'package:demo_app/CALCULATOR/answerScreeen.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String answer = "";
  String firstValue = "";
  String secondValue = "";
  int process = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CALCULATOR",
          style: TextStyle(
            letterSpacing: 2,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            answerScreen(answer),
            Row(
              children: [
                numericButton("7"),
                numericButton("8"),
                numericButton("9"),
                operatorButton("+"),
              ],
            ),
            Row(
              children: [
                numericButton("4"),
                numericButton("5"),
                numericButton("6"),
                operatorButton("-"),
              ],
            ),
            Row(
              children: [
                numericButton("1"),
                numericButton("2"),
                numericButton("3"),
                operatorButton("*"),
              ],
            ),
            Row(
              children: [
                numericButton("0"),
                numericButton("00"),
                numericButton("."),
                operatorButton("/"),
              ],
            ),
            Row(
              children: [
                operatorButton("AC"),
                operatorButton("x"),
                operatorButton("="),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget numericButton(String number) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.grey.shade400,
          onPressed: () {
            setState(() {
              answer = "$answer$number";
            });
          },
          child: Text(
            number,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget operatorButton(String operator) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: () {
            setState(() {
              if (operator == "AC") {
                answer = "";
              } else if (operator == "+") {
                firstValue = answer;
                answer = "";

                process = 1;
              }
              if (operator == "=") {
                secondValue = answer;
                answer = "";
              }
              int a = int.parse(firstValue);
              int b = int.parse(secondValue);
              int c = 0;

              if (process == 1) {
               c = a+b;
               answer = c.toString();
              }
            });
          },
          child: Text(
            operator,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
