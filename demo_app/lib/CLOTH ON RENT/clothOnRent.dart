import 'package:demo_app/CLOTH%20ON%20RENT/WomanScreen.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/kidsScreen.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/menSpecialScreen.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/searchScreen.dart';
import 'package:demo_app/CLOTH%20ON%20RENT/trendingProducts.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class imageFunction {
  String imageUrl;
  imageFunction({
    required this.imageUrl,
  });
}

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({super.key});

  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  List<imageFunction> imageData = [
    imageFunction(
        imageUrl: "https://pbs.twimg.com/media/DLrrxWeVYAAc1PT.jpg:large"),
    imageFunction(
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGXk5xlVXohQz7YfG6MaOrahg_zwy8g01__w&s"),
    imageFunction(
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2rjD5Ih95D9jtDzGnr95UQWkpNC26IMRD0g&s"),
    imageFunction(
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmMoWQrb88D89LqbFaTW_v9YO0MiTM515gzg&s"),
  ];
  int xyz = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/mypic.jpg"),
          ),
        ),
        title: Text(
          "Sahdev",
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Icon(Icons.change_circle_rounded),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.notifications)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              TextField(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ),
                  );
                },
                decoration: InputDecoration(
                    hintText: "Search Here...",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    color: Colors.grey,
                    child: PageView.builder(
                      itemCount: imageData.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black38,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(imageData[index].imageUrl),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230, top: 10),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenSpecialScreen(),
                              ));
                        },
                        child: Text("Men")),
                    SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WomanScreen(),
                              ));
                        },
                        child: Text("Woman")),
                    SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => KidsScreen(),
                              ));
                        },
                        child: Text("Kids")),
                    SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TrendingProducts(),
                              ));
                        },
                        child: Text("Trending Products")),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSzkc8_F95QbFkvmdvhNbcvVWV4cFCbbImoA&s")),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Kurta"),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQDVw2mU3I8sV-p9luBSVtr5Yhsnm5ok2gzQ&s"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Kurti"),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPCwaEampwKzsICQd6Hb8j0bfmFKCruJ7kRg&s"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Sherwani")
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUrANAVeSE_KRhJmCjWPBVMX5qQqUevl3Zzg&s"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Saree")
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJmTVLhypOkblTSjg01QRZ1zGrmW27wPdJ_g&s"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Lehengas")
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-KkrgJKmSGxahfOBH2jQEP6RQAenHt7Mkiw&s"),
                          radius: 45,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Indo Western & Gown")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Kurta",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    itemDataCard(
                        "https://mahezon.in/cdn/shop/files/IMG-20230716-WA0348_800x1026_crop_center@2x.jpg?v=1690734846",
                        "Kurta",
                        "Yellow Floral Printed Silk",
                        "XL"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://resources.indianclothstore.com/resources/productimages/1540-0115022023-White-Silk-Kurta-Pajama.jpg",
                        "Kurta",
                        "Men Slim Solid Spread",
                        "S  L  XL"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjlKPHc9lBKO-8GQeWq2JiN-QcdmV8XVYnOmVR0qjfovckETeq4u0E3TyDHpCVJSBVcUQ&usqp=CAU",
                        "Kurta",
                        "Yellow Mirro Work Long",
                        "M XL"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScYgrtPuEct3jqXwGBY6FrIvBlYjFCKNQEVczSof4vmFJnBgr0-oP7-m4HdjN-xBRiMDU&usqp=CAU",
                        "Kurta",
                        "Opullent Gold Silk Kurta ",
                        "FREE SIZE"),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.east_rounded),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Kurti",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    itemDataCard(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOKZKod2_Syl7yPmyxXfkrzNH6Tu02iuL8PQ-9GP3Kmsmp-TG6AlUsXNYiz6pPQdLFHPE&usqp=CAU",
                        "Kurti",
                        "Powder Blue Slick Maxi",
                        "XL XXL"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://rukminim1.flixcart.com/image/300/350/kshtxu80/kurta/y/j/3/xl-002-aayushi-original-imag6fq8ngh5drgu.jpeg?q=90",
                        "Kurti",
                        "Bottle Green Printed",
                        "S XL"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://vbuyz.com/cdn/shop/products/VF-KU-255.jpg?v=1681210657",
                        "Kurti",
                        "Black Kurti Set in Slick",
                        "FREE SIZE"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://images.meesho.com/images/products/60621140/qtlfm_512.jpg",
                        "Kurti",
                        "Pink Pent Set in Cottun",
                        "S M L"),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.east_rounded),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Saree",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    itemDataCard(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEYpW8Z3nz-q0Ps-C8DDb19LzWpUqQ5DNA9g&s",
                        "Saree",
                        "Brown Color Ready",
                        "FREE SIZE"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://assets.ajio.com/medias/sys_master/root/20230905/5w9g/64f63ee5afa4cf41f5a4c81f/-473Wx593H-466534274-teal-MODEL.jpg",
                        "Saree",
                        "Peacock Rama Saree In",
                        "S"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUa5skztt8H45A2qCT-pucYvQ9_5p1PgDUpWjgevzMlxPmZN6GNYZUFXIwcEEonVBjVRM&usqp=CAU",
                        "Saree",
                        "Glam Red Georgette Designer Silk",
                        "FREE SIZE"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://lajreedesigner.com/cdn/shop/products/KPR-128_3_900x1350_crop_center@2x.jpg?v=1669280535",
                        "Saree",
                        "Adorable Purple Soft Silk ",
                        "FREE SIZE"),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.east_rounded),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Lehengas",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    itemDataCard(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxREQKWJLEoS1XiH3h9UgtxyGnBnQyd0i1i6sl_z_lRsjscYuYOVMmuXdoACme2W6caas&usqp=CAU",
                        "Lehengas",
                        "Navratri Choli",
                        "S XL"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://dhartibandhani.com/cdn/shop/files/WhatsAppImage2023-08-10at12.25.29PM.jpg?v=1691674724&width=1445",
                        "Leengas",
                        "Chaniya Choli",
                        "Xl"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://me99.in/wp-content/uploads/2023/09/Latest-Navaratri-Wear-Lehenga-Choli-2023-14-scaled.jpg",
                        "Lehengas",
                        "White Lehwnga",
                        "M L"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://cdn.sareeka.com/image/data2023/rayon-embroidered-green-readymade-lehenga-choli-266819.jpg",
                        "Lehengas",
                        "Bride and Baraat",
                        "FREE SIZE"),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.east_rounded),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Indo Western & Grown",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    itemDataCard(
                        "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/20213758/2022/9/29/51637a2b-06b7-4b37-8554-c09f9e24833f1664443045944Dresses1.jpg",
                        "Indo Western & Gown",
                        "RedGown In Milano Satin",
                        "XL"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_4qjxwtDS1eISjATPMEMgraRIlkV8M_U8s0eJWb2y25HucRbDukLUU2OCPTrRtrGfOFI&usqp=CAU",
                        "Indo Western & Gown",
                        "Pink Printed Gown With",
                        "XL"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://i.pinimg.com/736x/3b/0b/12/3b0b1262d9f0fa66e79e13c2e01bb528.jpg",
                        "Indo Western & Gown",
                        "Purple Lehenga Set With",
                        "XXL"),
                    SizedBox(
                      width: 15,
                    ),
                    itemDataCard(
                        "https://kaystore.in/cdn/shop/products/KNG98828A.jpg?v=1641552528",
                        "Indo Western & Gown",
                        "Cream IndoWestern",
                        "FREE SIZE"),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.east_rounded),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemDataCard(
      String itemImage, String itemName, String itenDetail, String itemSize) {
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
                  fit: BoxFit.fill, image: NetworkImage(itemImage))),
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
                itemName,
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
                itenDetail,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                itemSize,
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
        )
      ],
    ));
  }
}
