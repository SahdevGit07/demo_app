import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {

  var a = 0;
  String buttons = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                print("hello");
              },
              icon: Icon(Icons.more_vert))
        ],
        title: Text(
          "Calculator",
          style: TextStyle(
            letterSpacing: 2,
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 315,
              width: double.infinity,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    a.toString(),
                    // buttons.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  a = 0;
                  print("Clear All");
                  setState(() {});
                },
                child: Text(
                  "AC",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.alphaBlend(Colors.white, Colors.deepPurple))),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.alphaBlend(Colors.white, Colors.deepPurple),
                  ),
                ),
                onPressed: () {
                  // buttons = "%".toString();
                  print("Press : %");
                  setState(() {});
                },
                child: Text(
                  "%",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.alphaBlend(Colors.white, Colors.deepPurple),
                  ),
                ),
                onPressed: () {
                  a = 0;
                  print("Cancel");
                  setState(() {});
                },
                child: Icon(Icons.cancel_presentation_outlined),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.alphaBlend(Colors.white, Colors.deepPurple),
                  ),
                ),
                onPressed: () {
                  print("Press : /");
                  setState(() {});
                },
                child: Text(
                  "/",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    a = 7;
                    print("Press : 7");
                    setState(() {});
                  },
                  child: Text(
                    "7",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    a = 8;
                    print("Press : 8");
                    setState(() {});
                  },
                  child: Text(
                    "8",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    a = 9;
                    print("Press : 9");
                    setState(() {});
                  },
                  child: Text(
                    "9",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    print("Press : *");
                    setState(() {});
                  },
                  child: Text(
                    "*",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    a = 4;
                    print("Press : 4");
                    setState(() {});
                  },
                  child: Text(
                    "4",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    a = 5;
                    print("Press : 5");
                    setState(() {});
                  },
                  child: Text(
                    "5",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    a = 6;
                    print("Press : 6");
                    setState(() {});
                  },
                  child: Text(
                    "6",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    print("Predd : -");
                    setState(() {});
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    a = 1;
                    print("Press : 1");
                    setState(() {});
                  },
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    a = 2;
                    print("Press : 2");
                    setState(() {});
                  },
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    a = 3;
                    print("Print : 3");
                    setState(() {});
                  },
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    print("Press : +");
                    setState(() {});
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    a = 00;
                    print("Press : 00");
                    setState(() {});
                  },
                  child: Text(
                    "00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    a = 0;
                    print("Press : 0");
                    setState(() {});
                  },
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.white, Colors.deepPurple))),
                  onPressed: () {
                    print("Press : .");
                    setState(() {});
                  },
                  child: Text(
                    ".",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.alphaBlend(Colors.orange, Colors.deepPurple))),
                  onPressed: () {
                    a = a;
                    print("Press : =");
                    setState(() {});
                  },
                  child: Text(
                    "=",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
