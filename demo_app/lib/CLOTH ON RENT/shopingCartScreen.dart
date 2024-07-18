import 'package:flutter/material.dart';

class ShopingCratScreen extends StatefulWidget {
  const ShopingCratScreen({super.key});

  @override
  State<ShopingCratScreen> createState() => _ShopingCratScreenState();
}

class _ShopingCratScreenState extends State<ShopingCratScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trending Product",
          style: TextStyle(
              color: Colors.indigo.shade900,
              letterSpacing: 1,
              fontSize: 23,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTikGcJAdAIGQ7pFrn84IeMbhdZRlSzenSbtA&s")),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "SORRY, THIS PRODUCT IS CURRENTLY EMPTY !",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  letterSpacing: 1,
                  color: Colors.indigo.shade900),
            ),
          )
        ],
      ),
    );
  }
}
