import 'package:flutter/material.dart';

class MyContainer1 extends StatefulWidget {
  const MyContainer1({super.key});

  @override
  State<MyContainer1> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 400,
        color: Colors.blue,
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.symmetric(vertical:10,horizontal: 10),
        child: Center(child: Text("Hello Flutter")),


      ),
    );
  }
}
