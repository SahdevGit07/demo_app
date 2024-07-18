import 'package:demo_app/FRUITS/cartScreen.dart';
import 'package:demo_app/FRUITS/fruitListScreen.dart';
import 'package:flutter/material.dart';

class FruitDetailsScreen extends StatefulWidget {
  String image;
  String name;
  String description;

  FruitDetailsScreen(
      {super.key,
      required this.name,
      required this.description,
      required this.image});

  @override
  State<FruitDetailsScreen> createState() => _FruitDetailsScreenState();
}

class _FruitDetailsScreenState extends State<FruitDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(widget.image))),
          ),
          SizedBox(
            height: 20,
          ),
          Text(widget.name),
          SizedBox(
            height: 20,
          ),
          Text(widget.description),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(shape: RoundedRectangleBorder()),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ));
                },
                child: Text("Add to cart")),
          )
        ],
      ),
    );
  }
}
