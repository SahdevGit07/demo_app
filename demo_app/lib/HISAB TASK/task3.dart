import 'package:flutter/material.dart';

class MyScrollPage extends StatefulWidget {
  const MyScrollPage({super.key});

  @override
  State<MyScrollPage> createState() => _MyScrollPageState();
}

class _MyScrollPageState extends State<MyScrollPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        title: Text("My Photo's Galary"),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/mypic.jpg",
                        ),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/mypic.jpg",
                        ),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/mypic.jpg",
                        ),
                        fit: BoxFit.fill)),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
