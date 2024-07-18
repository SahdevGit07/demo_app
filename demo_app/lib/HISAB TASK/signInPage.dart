import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text(
                "Login here",
                style: TextStyle(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.blueAccent),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(text: "Welcome back you've"),
          ),
          TextField(
            style: TextStyle(),
            onTap: () {
              setState(() {
                Text("Email");
              });
            },
          )
        ],
      ),
    );
  }
}
