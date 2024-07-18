import 'package:flutter/material.dart';

class BlockDemoApp extends StatefulWidget {
  const BlockDemoApp({super.key});

  @override
  State<BlockDemoApp> createState() => _BlockDemoAppState();
}

class _BlockDemoAppState extends State<BlockDemoApp> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Block Demo APP",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Text(
              a.toString(),
              style: TextStyle(fontSize: 70, color: Colors.black38),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    a--;

                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 120,
                    child: Center(
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    a++;

                    setState(() {});
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "+",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color(0XFF52BE80),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
