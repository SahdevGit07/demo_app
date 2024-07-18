

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediaQueryExample extends StatefulWidget {
  const MediaQueryExample({super.key});

  @override
  State<MediaQueryExample> createState() => _MediaQueryExampleState();
}

class _MediaQueryExampleState extends State<MediaQueryExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.width/4,
              width: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.green),
                image: DecorationImage(
                  image: AssetImage("assets/images/mypic.jpg"),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            MyScrolledContainer(),
            SizedBox(
              width: 15,
            ),
            Builder(builder: (context) {
              return Container(
                height: MediaQuery.of(context).size.width/3,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.green),
                  image: DecorationImage(
                    image: AssetImage("assets/images/mypic.jpg"),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}

class MyScrolledContainer extends StatefulWidget {
  const MyScrolledContainer({super.key});

  @override
  State<MyScrolledContainer> createState() => _MyScrolledContainerState();
}

class _MyScrolledContainerState extends State<MyScrolledContainer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.green),
        image: DecorationImage(
          image: AssetImage("assets/images/mypic.jpg"),
        ),
      ),
    );
  }
}
