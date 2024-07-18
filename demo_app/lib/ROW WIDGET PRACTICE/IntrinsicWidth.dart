import 'package:flutter/material.dart';

class IntrinsicWidthPracice extends StatefulWidget {
  const IntrinsicWidthPracice({super.key});

  @override
  State<IntrinsicWidthPracice> createState() => _IntrinsicWidthPraciceState();
}

class _IntrinsicWidthPraciceState extends State<IntrinsicWidthPracice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntrinsicHeight(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    print("Hii");
                  },
                  child: Text("Hii")),
              TextButton(
                  onPressed: () {
                    print("Hello");
                  },
                  child: Text("Hello")),
              TextButton(
                  onPressed: () {
                    print("Good Morning");
                  },
                  child: Text("Good Morning")),
            ],
          ),
        ),
      ),
    );
  }
}
