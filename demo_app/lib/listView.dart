import 'package:flutter/material.dart';

class ListViewPractice extends StatefulWidget {
  const ListViewPractice({super.key});

  @override
  State<ListViewPractice> createState() => _ListViewState();
}

class _ListViewState extends State<ListViewPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text(
          "List View Widget",
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 2,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/33045/lion-wild-africa-african.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Lions are among the biggest cats and belong to the Felidae family, which is the cat family. Lions, tigers, leopards, panthers, and jaguars are all cat family members, but lions are the most powerful. The lion is one of the bravest creatures and has a powerful appearance. They are also known as the jungle’s kings. Lions are large, four-legged animals with a hefty appearance. Male lions have a mane that gives them a bulky appearance, whereas female lions do not have a mane. Lions reside in deep forests and are found in groups known as ‘pride’. Five to thirty lions make up the pride. Only a few male lions will be found in pride, while the majority are lionesses and their cubs. Lions are fiercely protective when it comes to their families, offspring, and safe havens. They are capable of fighting for their survival as well as the survival of their young. Lions hunt and live together, sleeping for more than 20 hours at a time. Lions are found in India’s Gir Forest, and the country is known for being the home of these animals. They’re also found in Eastern and Southern Africa and other sections of the continent. Lions consume flesh and are occasionally spotted eating grass though they are not grass-eaters. Every different individual on the planet is unique in their own way. A lion is different and powerful from all other animals in the forest. The roar of the lion is something that makes them unique."),
          ),
        ],
      ),
    );
  }
}
