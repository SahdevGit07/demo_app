import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget answerScreen(String answer) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(15),
            border: Border.all()),
        child: Center(
          child: Text(answer,style: TextStyle(fontSize: 40,),),
        ),
      ),
    ),
  );
}
