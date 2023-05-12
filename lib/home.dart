import 'package:c9_shared_preferences/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
            Center(
              child: Text("HomeScreen"),

            ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {
              SharedPreferences prefer = await SharedPreferences.getInstance();
              prefer.clear();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: const Center(
                  child: Text("Log out  "),
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
