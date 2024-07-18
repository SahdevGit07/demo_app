import 'package:demo_app/CLOTH%20ON%20RENT/clothOnRent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WomanScreen extends StatefulWidget {
  const WomanScreen({super.key});

  @override
  State<WomanScreen> createState() => _WomanScreenState();
}

class _WomanScreenState extends State<WomanScreen> {
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
          "Woman",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.indigo,
              fontSize: 20,
              letterSpacing: 1),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
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
                    WomanClothes(
                        "https://i.pinimg.com/736x/97/58/22/975822a77c52d34eb8729059356188f9.jpg",
                        "Chaniya Choli",
                        "Celebrity Choli",
                        "FREE SIZE"),
                    SizedBox(
                      width: 15,
                    ),
                    WomanClothes(
                        "https://i.pinimg.com/736x/4f/b4/b5/4fb4b5ef458fbab90bca99ff17d476b7.jpg",
                        "Chaniya Choli",
                        "Celebrity Choli",
                        "FREE SIZE"),
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
                  WomanClothes(
                      "https://i.pinimg.com/736x/17/45/7f/17457f29294b7fec42dc970780e21b3c.jpg",
                      "Kurti",
                      "Celebrity Kurti ",
                      "FREE SIZE"),
                  SizedBox(
                    width: 15,
                  ),
                  WomanClothes(
                      "https://images.herzindagi.info/webstories/7572/1676377197-1.jpg",
                      "Kurti",
                      "Celebrity Kurti",
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
                  WomanClothes(
                      "https://www.bollywoodhungama.com/wp-content/uploads/2022/06/Kriti-Sanon-looks-dreamy-in-Shivan-Narresh%E2%80%99s-ivory-lehenga-3.jpg",
                      "Indo Western Gown",
                      "Celebrity Indo Western ",
                      "FREE SIZE"),
                  SizedBox(
                    width: 15,
                  ),
                  WomanClothes(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQekEjWuxhdUti1dawHARHVvqDTgGuPZvKIC9S7fNh7PGjqmIv5lXAFbcSqdiLm9ymsXT0&usqp=CAU",
                      "Indo Western Gown",
                      "Celebrity Gown",
                      "FREE SIZE"),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget WomanClothes(String image, String name, String desc, String size) {
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
