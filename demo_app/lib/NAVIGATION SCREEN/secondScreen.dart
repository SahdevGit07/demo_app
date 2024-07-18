import 'package:demo_app/NAVIGATION%20SCREEN/thirdScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.green,
              child: const Center(
                child: Text("Second Screen",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            OutlinedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => ThirdScreen(),
                  //     ));
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ThirdScreen(),));
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdScreen(),
                      ),
                      (route) => false);
                },
                child: Text(
                  "Next Screen",
                  style: TextStyle(),
                )),
            const SizedBox(
              height: 100,
            ),

          ],
        ),
      ),
    );
  }
}
