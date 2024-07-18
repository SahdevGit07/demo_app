import 'package:flutter/material.dart';

class MyColorsApp extends StatefulWidget {
  const MyColorsApp({super.key});

  @override
  State<MyColorsApp> createState() => _MyColorsAppState();
}

class _MyColorsAppState extends State<MyColorsApp> {
  Color selectedColor = Colors.white;

  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  void ChangeColor(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors App'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 605,
            width: double.infinity,
            color: selectedColor,
            child: Center(
              child: Text(
                'My Favorite Color',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: colors.map((color) {
                return TextButton(
                  onPressed: () {
                    ChangeColor(color);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: color,
                    ),
                    width: 35,
                    height: 35,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
