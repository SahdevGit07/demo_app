import 'package:flutter/material.dart';

class MyContainer2 extends StatefulWidget {
  const MyContainer2({super.key});

  @override
  State<MyContainer2> createState() => _MyContainer2State();
}

class _MyContainer2State extends State<MyContainer2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(offset: Offset(2, 2), blurRadius: 5)],
          ),
          child: Center(
              child: Text(
            "Styled Container",
            style: TextStyle(
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Colors.white,fontSize: 18),
          )),
        ),
      ),
    );
  }
}
