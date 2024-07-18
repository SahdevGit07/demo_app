import 'package:flutter/material.dart';

class SahdevAccount extends StatefulWidget {
  const SahdevAccount({super.key});

  @override
  State<SahdevAccount> createState() => _SahdevAccountState();
}

class _SahdevAccountState extends State<SahdevAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: 400,
        color: Colors.deepPurple,
        child:Container(
          height: 700,
          width: 400,
        ),
      ),
    );
  }
}
