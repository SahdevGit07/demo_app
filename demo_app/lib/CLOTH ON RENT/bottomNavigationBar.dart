import 'package:demo_app/CLOTH%20ON%20RENT/WomanScreen.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/kidsScreen.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/menSpecialScreen.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/profileScreen.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/shopingCartScreen.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/trendingProducts.dart';

import 'package:flutter/material.dart';

import 'chatScreen.dart';
import 'clothOnRent.dart';

class BottumNavigationScreen extends StatefulWidget {
  const BottumNavigationScreen({super.key});

  @override
  State<BottumNavigationScreen> createState() => _BottumNavigationScreenState();
}

class _BottumNavigationScreenState extends State<BottumNavigationScreen> {
  List screenNames = [
    MyFirstApp(),
    ShopingCratScreen(),
    ChatScreen(),
    ProfileScreen(),
    MenSpecialScreen(),
    WomanScreen(),
    KidsScreen(),
    TrendingProducts(),

  ];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        onTap: (value) {
          setState(() {
            selectIndex =value;
          });
        },

        currentIndex:selectIndex,

          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: "Trending"),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ]),
     body: screenNames[selectIndex],
    );
  }
}
