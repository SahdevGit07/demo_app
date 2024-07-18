import 'package:demo_app/CALCULATOR/myCalculator.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/WomanScreen.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/bottomNavigationBar.dart';
import 'package:demo_app/CONTAINER_WIDGET/firstContainer.dart';
import 'package:demo_app/CONTAINER_WIDGET/secondContainer.dart';
import 'package:demo_app/HISAB%20TASK/signInPage.dart';
import 'package:demo_app/HISAB%20TASK/task2.dart';
import 'package:demo_app/HISAB%20TASK/task5.dart';
import 'package:demo_app/NAVIGATION%20SCREEN/firstScreen.dart';
import 'package:demo_app/NAVIGATION%20SCREEN/secondScreen.dart';
import 'package:demo_app/NAVIGATION%20SCREEN/thirdScreen.dart';
import 'package:demo_app/demoApp.dart';
import 'package:demo_app/quotes.dart';
import 'package:demo_app/sahdev.dart';
import 'package:flutter/material.dart';
import 'CONTAINER_WIDGET/Container3.dart';
import 'ClOTH ON RENT/clothOnRent.dart';

import 'FRUITS/fruitListScreen.dart';
import 'HISAB TASK/task1.dart';
import 'HISAB TASK/task3.dart';
import 'HISAB TASK/task4.dart';
import 'PressOnOffButton.dart';
import 'ROW WIDGET PRACTICE/IntrinsicWidth.dart';
import 'ROW WIDGET PRACTICE/_BaseLine.dart';
import 'ROW WIDGET PRACTICE/_ThreeStar.dart';
import 'calcuLator.dart';
import 'colorsChanges.dart';
import 'listView.dart';
import 'loginPage.dart';
import 'ludo.dart';
import 'msgScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuestionFab(),
    );
  }

}
