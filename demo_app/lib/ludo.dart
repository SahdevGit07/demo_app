import 'dart:math';

import 'package:flutter/material.dart';

class LudoDice extends StatefulWidget {
  const LudoDice({super.key});

  @override
  State<LudoDice> createState() => _LudoDiceState();
}

class _LudoDiceState extends State<LudoDice> {
  String Current = "assets/images/Dice1.png";
  List ImageName = [
    "assets/images/Dice1.png",
    "assets/images/Dice2.png",
    "assets/images/Dice3.png",
    "assets/images/Dice4.png",
    "assets/images/Dice5.png",
    "assets/images/Dice6.png",
  ];
  void Changes() {
    random = Random().nextInt(6);
    Current = ImageName[random];
  }

  int random = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Ludo Game"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 300,
            width: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(Current),
          ),
          SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              Changes();
              setState(() {});
            },
            child: Text("Next"),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Color.alphaBlend(Colors.deepPurple, Colors.white))),
          )
        ],
      ),
    );
  }
}
