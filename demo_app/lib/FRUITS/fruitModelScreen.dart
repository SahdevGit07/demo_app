import 'package:flutter/cupertino.dart';

class FruitModel {
  String name;
  String image;
  String desc;
  IconData icon;

  FruitModel(
      {required this.name,
        required this.desc,
        required this.image,
        required this.icon});
}
