import 'package:demo_app/CLOTH%20ON%20RENT/clothOnRent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KidsScreen extends StatefulWidget {
  const KidsScreen({super.key});

  @override
  State<KidsScreen> createState() => _KidsScreenState();
}

class _KidsScreenState extends State<KidsScreen> {
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
            )),
        title: Text(
          "Kids",
          style: TextStyle(
            letterSpacing: 1,
            fontSize: 25,
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.filter_list,
              color: Colors.indigo,
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
              child: Row(
                children: [
                  KidsClothes(
                      "https://www.bangaloredesignerboutique.com/wp-content/uploads/2022/07/p7-2.jpg",
                      "Dress",
                      "Mint Grey Organza",
                      "FREE SIZE"),
                  SizedBox(
                    width: 15,
                  ),
                  KidsClothes(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXF5V35TbgAtGSIvMiXWCPUD5LG76LjQAjPJS-6FmbXo7J8RCHKjebFbZG1Ny1nohrkMA&usqp=CAU",
                      "Plaza",
                      "Cream Plaza",
                      "10-12 Year"),
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
                  KidsClothes(
                      "https://www.siyafashion.com/cdn/shop/files/OL-604_400x.jpg?v=1698655558 ",
                      "Kurta",
                      "Hot Purple Printed",
                      ""),
                  SizedBox(
                    width: 15,
                  ),
                  KidsClothes(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqVMUVfQfjXfYOVgfNVxd5iEUMemohFQfqdg&s",
                      "Blazer",
                      "Wedding Blazer",
                      "10-12 Year"),
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

Widget KidsClothes(String image, String name, String desc, String size) {
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
