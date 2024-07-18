import 'package:demo_app/NAVIGATION%20SCREEN/firstScreen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
              color: Colors.amber,
              child: const Center(
                child: Text("Third Screen",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            // OutlinedButton(
            //     onPressed: () {
            //       print("done...");
            //     },
            //     child: Text("Next Screen")),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      DialogRoute(
                        context: context,
                        builder: (context) => FirstScreen(),
                      ));
                  print("done...");
                },
                child: Text("back Screen"))
          ],
        ),
      ),
    );
  }
}
