import 'package:flutter/material.dart';

class QuestionFab extends StatefulWidget {
  const QuestionFab({super.key});

  @override
  State<QuestionFab> createState() => _QuestionFabState();
}

class _QuestionFabState extends State<QuestionFab> {
  List myQuestions =["How Are You ?","Where Are You Goig ?",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Questions"),
      ),
      body: Center(
        child: Text(""),

      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },),
    );
  }
}
