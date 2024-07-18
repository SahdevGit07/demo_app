import 'package:flutter/material.dart';

class MsgScreen {
  String image;
  String name;
  String description;
  IconData icon;

  MsgScreen(
      {required this.image,
      required this.name,
      required this.description,
      required this.icon});
}

class msgScreenPractice extends StatefulWidget {
  const msgScreenPractice({super.key});

  @override
  State<msgScreenPractice> createState() => _msgScreenState();
}

class _msgScreenState extends State<msgScreenPractice> {
  List<MsgScreen> userData = [
    MsgScreen(
        image:
            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
        name: "Sahdev Shisha",
        description: "How Are You..?",
        icon: Icons.camera_alt),
    MsgScreen(
        image:
            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
        name: "Nikunj Asodariya",
        description: "When you Come Trueline Institute..?",
        icon: Icons.camera_alt),
    MsgScreen(
        image:
            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
        name: "Vishal Govindiya",
        description: "Hey",
        icon: Icons.camera_alt),
    MsgScreen(
        image:
            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
        name: "Deep Yadav",
        description: "Let's Play Pubg",
        icon: Icons.camera_alt),
    MsgScreen(
        image:
            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
        name: "Ujas Barvaliya",
        description: "Call Me Brother",
        icon: Icons.camera_alt),
    MsgScreen(
        image:
            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
        name: "Utsav Borda",
        description: "What Are You Doing",
        icon: Icons.camera_alt),
    MsgScreen(
        image:
            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
        name: "Gohil Kapil",
        description: "Sent A Vidio",
        icon: Icons.camera_alt),
    MsgScreen(
        image:
            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
        name: "Talaviya Jay",
        description: "Sent A Photo",
        icon: Icons.camera_alt),
    MsgScreen(
        image:
            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
        name: "Manthan Dhameliya",
        description: "Sent a reel",
        icon: Icons.camera_alt),
    MsgScreen(
        image:
            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
        name: "Jeet Bhava",
        description: "Sent A voice",
        icon: Icons.camera_alt),
    MsgScreen(
        image:
            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
        name: "Viren Patel",
        description: "Sent A Profile",
        icon: Icons.camera_alt),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: Text(
            "Msg Screen",
            style: TextStyle(
                fontWeight: FontWeight.w700, letterSpacing: 2, fontSize: 20),
          ),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: userData.length,
          itemBuilder: (context, index) {
            print(userData[index].description);
            return Card(
              color: Colors.grey,
              child: ListTile(
                leading: CircleAvatar(
                  child: Image(
                    image: NetworkImage(userData[index].image),
                  ),
                ),
                title: Text(userData[index].name),
                subtitle: Text(userData[index].description),
                trailing: Icon(userData[index].icon),
              ),
            );
          },
        ));
  }
}
