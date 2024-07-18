import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController concatController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text("Register Form",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      emailController.text = value;
                    });
                  },
                  obscureText: true,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      // color: Colors.red,
                      fontSize: 20),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Enter your Email",
                      // hintText: "Enter your Email",
                      //   hintStyle: TextStyle(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text("User Email is ${emailController.text}"),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 5),
                      child: TextFormField(
                        controller: fNameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            labelText: "Enter your Fname ",
                            labelStyle: TextStyle(),
                            // hintText: "Enter your Email",
                            //   hintStyle: TextStyle(),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15, left: 5),
                      child: TextFormField(
                        controller: lNameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            labelText: "Enter your Lname",
                            // hintText: "Enter your Email",
                            //   hintStyle: TextStyle(),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                child: TextFormField(
                  controller: concatController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "Enter your Contact No.",
                      // hintText: "Enter your Email",
                      //   hintStyle: TextStyle(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                child: TextFormField(
                  maxLines: 4,
                  controller: addressController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Enter your Address",
                      // hintText: "Enter your Email",
                      //   hintStyle: TextStyle(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              TextButton(
                  onPressed: () {
                    print('''
                Email : ${emailController.text}
                Fname : ${fNameController.text}
                Lname : ${lNameController.text}
                ContactNo : ${concatController.text}
                ''');
                  },
                  child: const Text("Print Data")),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
