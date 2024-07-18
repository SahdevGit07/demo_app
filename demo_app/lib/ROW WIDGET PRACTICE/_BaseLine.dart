import 'package:flutter/material.dart';

class BaselinePractice extends StatefulWidget {
  const BaselinePractice({super.key});

  @override
  State<BaselinePractice> createState() => _BaselineState();
}

class _BaselineState extends State<BaselinePractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Text(
            'Baseline',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            'Baseline',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
