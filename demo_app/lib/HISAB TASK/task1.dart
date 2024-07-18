import 'dart:math';

import 'package:flutter/material.dart';

class floatingActionButtonPractice extends StatefulWidget {
  const floatingActionButtonPractice({super.key});

  @override
  State<floatingActionButtonPractice> createState() =>
      _floatingActionButtonPracticeState();
}

class _floatingActionButtonPracticeState
    extends State<floatingActionButtonPractice> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Trueline Institute"),
      ),
      body: Builder(builder: (context) {
        return Center(
          child: ElevatedButton(
              onPressed: () {
                final message = SnackBar( action: SnackBarAction(label: "Done", onPressed: () {

                },),backgroundColor :Colors.deepPurple,content: Text("Sahdev Shisha"));
                ScaffoldMessenger.of(context).showSnackBar(message);
              },
              child: Text("Click")),
        );
      }),
    );
  }
}
