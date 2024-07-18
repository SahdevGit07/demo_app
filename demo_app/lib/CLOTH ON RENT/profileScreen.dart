
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List listName = [
    "Coind Details",
    "Manage Products",
    "Change Password",
    "Refer & Earn",
    "Contact US",
    "Delete Your Account"
  ];
  List<Icon> iconlist = [
    const Icon(Icons.confirmation_num),
   const  Icon(Icons.shopping_cart),
    const Icon(Icons.lock),
    const Icon(Icons.card_giftcard),
    const Icon(Icons.call),
    const Icon(Icons.delete)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 23,
            letterSpacing: 1,
            color: Colors.indigo.shade900,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 170,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.indigo.shade800,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/mypic.jpg"),
                      radius: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sahdev Shisha",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "sahdevshisha@gmail.com",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "9313092707",
                          style: TextStyle(color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listName.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  color: Colors.white,
                  child: ListTile(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => CoinDetails(),));
                    },
                    leading: iconlist[index],
                    title: Text(
                      listName[index].toString(),
                      style: TextStyle(
                          color: Color(0XFF154360),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.yellow.shade900,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Log out",
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    letterSpacing: 1),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.logout,
                color: Colors.orange,
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget profileList(String title, Widget icon, Widget icon1) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      elevation: 0,
      child: ListTile(
        title: Text(title),
        leading: icon,
        trailing: icon1,
      ),
    ),
  );
}
