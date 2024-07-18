
import 'package:flutter/material.dart';

import 'clothOnRent.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SerachScreenState();
}

class _SerachScreenState extends State<SearchScreen> {
  List location =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context, MyFirstApp());
                      },
                      child: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: 40,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context, MyFirstApp());
                      },
                      child: Icon(Icons.location_on)),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Select Area/Pi...",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black38),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Search Here...",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
