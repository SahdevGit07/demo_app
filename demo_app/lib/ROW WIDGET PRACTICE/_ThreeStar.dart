import 'package:flutter/material.dart';

class ThreeStar extends StatefulWidget {
  const ThreeStar({super.key});

  @override
  State<ThreeStar> createState() => _ThreeStarState();
}

class _ThreeStarState extends State<ThreeStar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        title: Text(
          "MAin Axis Alignment Start",
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 2,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.star,
            size: 60,
          ),
          Icon(
            Icons.star,
            size: 60,
          ),
          Icon(
            Icons.star,
            size: 60,
          ),
        ],
      ),
    );
  }
}
