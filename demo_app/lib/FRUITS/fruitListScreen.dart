import 'package:flutter/material.dart';

import 'fruitModelScreen.dart';
import 'fruitsDetailScreen.dart';

List<FruitModel> fruitList = [
  FruitModel(
      name: "Apple",
      desc: "Apple is good for health",
      image:
          "https://www.shutterstock.com/image-photo/red-apple-isolated-on-white-600nw-1727544364.jpg",
      icon: Icons.delete),
  FruitModel(
      name: "Orange",
      desc: "Orange is good for better health.",
      image:
          "https://media.istockphoto.com/id/185284489/photo/orange.jpg?s=612x612&w=0&k=20&c=m4EXknC74i2aYWCbjxbzZ6EtRaJkdSJNtekh4m1PspE=",
      icon: Icons.delete),
  FruitModel(
      name: "Watermelon",
      desc: "Watermelon is good fruits",
      image:
          "https://5.imimg.com/data5/SELLER/Default/2022/3/ZZ/PW/RZ/36905324/fruits-watermelons.jpg",
      icon: Icons.delete),
  FruitModel(
      name: "Mango",
      desc: "Mango Is King Of Fruits",
      image:
          "https://femina.wwmindia.com/content/2022/jun/beauty-51654501801.jpg",
      icon: Icons.delete),
  FruitModel(
      name: "Banana",
      desc: "Banana Is Good For Body",
      image:
          "https://chefsmandala.com/wp-content/uploads/2018/03/Banana-400x300.jpg",
      icon: Icons.delete),
  FruitModel(
      name: "Pinepal",
      desc: "Pinepal Is Good Fruit",
      image:
          "https://media.istockphoto.com/id/452352231/photo/pineapple.jpg?s=612x612&w=0&k=20&c=BioDwSdBPMlCpc56389y9JUsAJFGXkk5gr14R4hxikY=",
      icon: Icons.delete),
  FruitModel(
      name: "Strawbarry",
      desc: "Strawbarry is Good For Better Helth",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn1p2sQi8553fUYJMP9pq2cdkwcP18ZqpDWg-pK1TE8R9G821i55oCaGhjhmtWVK4pxN8&usqp=CAU",
      icon: Icons.delete)
];

class FruitListScreen extends StatefulWidget {
  const FruitListScreen({super.key});

  @override
  State<FruitListScreen> createState() => _FruitListScreenState();
}

class _FruitListScreenState extends State<FruitListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fruit List Screen"),
      ),
      body: ListView.builder(
        itemCount: fruitList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            child: Card(
              child: ListTile(
                onTap: () {
                  // navigate to product details screen
                  print(index);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FruitDetailsScreen(
                            name: fruitList[index].name,
                            description: fruitList[index].desc,
                            image: fruitList[index].image),
                      ));
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(fruitList[index].image),
                ),
                title: Text(fruitList[index].name),
                subtitle: Text(fruitList[index].desc),
                trailing: Icon(fruitList[index].icon),
              ),
            ),
          );
        },
      ),
    );
  }
}
