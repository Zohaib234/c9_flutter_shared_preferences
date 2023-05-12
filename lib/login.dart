import 'package:c9_shared_preferences/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailcontroller = TextEditingController();
  final agecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: emailcontroller,
              decoration: const InputDecoration(hintText: "email"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: agecontroller,
              decoration: const InputDecoration(hintText: "age"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {
              SharedPreferences prefer = await SharedPreferences.getInstance();
              prefer.setString("email", emailcontroller.text.toString());
              prefer.setString("age", agecontroller.text.toString());
              prefer.setBool("IsLogIn", true);

              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: const Center(
                  child: Text("Log In "),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // all about future functions
  // Future<void> Zohaib() async {
  //   await Future.delayed(Duration(seconds: 03));
  //    print("delayed");
  // }
}
