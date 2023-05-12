import 'dart:async';

import 'package:c9_shared_preferences/home.dart';
import 'package:c9_shared_preferences/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    IsLogin();
  }

  void IsLogin() async {
    SharedPreferences pr = await SharedPreferences.getInstance();
    bool islogin = pr.getBool("IsLogIn") ?? false;
    if (islogin) {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      });
    } else {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const [
          Image(
              image: NetworkImage(
                  "https://images.pexels.com/photos/16144099/pexels-photo-16144099.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load"))
        ],
      ),
    );
  }
}
