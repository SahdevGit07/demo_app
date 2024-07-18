import 'package:demo_app/CLOTH%20ON%20RENT/clothOnRent.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/clothModel.dart';
import 'package:flutter/material.dart';



class MenSpecialScreen extends StatefulWidget {
  const MenSpecialScreen({super.key});

  @override
  State<MenSpecialScreen> createState() => _MenSpecialScreenState();
}

class _MenSpecialScreenState extends State<MenSpecialScreen> {
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
            child: Icon(Icons.arrow_back,color: Colors.indigo,)),
        title: Text(
          "Men",
          style: TextStyle(
              fontSize: 25,
              color: Colors.indigo,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(
              Icons.filter_list,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Expanded(
                child: Row(
                  children: [
                    MenClothes(
                        "https://images.meesho.com/images/products/99564329/h59eh_512.webp",
                        "Kurta",
                        "Stylish Men Kurta Sets",
                        "X S M"),
                    SizedBox(
                      width: 15,
                    ),
                    MenClothes(
                        "https://i.pinimg.com/564x/9c/96/60/9c96606e3f65432e1d81aff11d83abe7.jpg",
                        "Kurta",
                        "Diwali Special",
                        "X XXL"),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MenClothes(
                      "https://5.imimg.com/data5/SELLER/Default/2023/6/320105690/UG/MH/AX/192039720/mens-wear-500x500.jpeg",
                      "Blezzer",
                      "Many blisters from the straps",
                      "X XXL "),
                  SizedBox(
                    width: 15,
                  ),
                  MenClothes(
                      "https://www.bonsoir.co.in/cdn/shop/files/formal-wear-home_1024x1024.jpg?v=1613239078",
                      "Blezzer",
                      "Buisness Suits For - Bonsoir",
                      "X XL M"),
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
                  MenClothes(
                      "https://suvidhafashion.com/cdn/shop/files/5007-M1.jpg?v=1699940145&width=500",
                      "Sherwani",
                      "Best Color Wedding Sherwani",
                      "XXL M S XL"),
                  SizedBox(
                    width: 15,
                  ),
                  MenClothes(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8X_x4PzbQAaNCvp7rCPVK5a_LfAMT0F1GaIko2Fqn-M-mqk-vwHiOp6ffrjrby-fh4g0&usqp=CAU",
                      "Sherwani",
                      "Golden Color Wedding Sherwani",
                      "X XL XXL"),
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

  Widget MenClothes(String image, String name, String desc, String size) {
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
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
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
}
