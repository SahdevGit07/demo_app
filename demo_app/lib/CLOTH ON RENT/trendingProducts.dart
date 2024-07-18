import 'package:demo_app/CLOTH%20ON%20RENT/clothOnRent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrendingProducts extends StatefulWidget {
  const TrendingProducts({super.key});

  @override
  State<TrendingProducts> createState() => _TrendingProductsState();
}

class _TrendingProductsState extends State<TrendingProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyFirstApp(),
                ));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.indigo,
            size: 30,
          ),
        ),
        title: Text(
          "Trending Products",
          style: TextStyle(
              fontSize: 23, color: Colors.indigo, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TrendingClothes(
                      "https://www.modavracha.com/wp-content/uploads/2016/04/stylish-pyjamas-fashion-trend-streetstyle-outfits.jpg ",
                      "pajamas",
                      "Stylish or Only Comfortable",
                      "FREE SIZE"),
                  SizedBox(
                    width: 15,
                  ),
                  TrendingClothes(
                      "https://img.ltwebstatic.com/images3_pi/2022/02/17/164506436745320ff011233db1bced8da05a2e0236_thumbnail_720x.webp",
                      "3 Piece",
                      "Cute Loung Outfits",
                      "FREE SIZE"),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TrendingClothes(
                      "https://i.pinimg.com/736x/14/8a/8b/148a8bf21abeb27a79780b558770fbe1.jpg",
                      "Formal",
                      "Dashing Formal Outfit",
                      "X XXL M S "),
                  SizedBox(
                    width: 15,
                  ),
                  TrendingClothes(
                      "https://i.pinimg.com/564x/64/6c/2a/646c2a593d1bf71c1c5a8a8f4cfdf232.jpg",
                      "Denim Jackets",
                      "Sweater with a denim jacket",
                      "X S M "),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

Widget TrendingClothes(String image, String name, String desc, String size) {
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250,
          width: 220,
          // color: Colors.yellow,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(image))),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.yellow.shade900),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                desc,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                size,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  SizedBox(
                    width: 70,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
