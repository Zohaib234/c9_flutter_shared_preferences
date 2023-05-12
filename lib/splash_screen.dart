import 'dart:async';

import 'package:c9_shared_preferences/home.dart';
import 'package:c9_shared_preferences/login.dart';
import 'package:flutter/material.dart';
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
    Timer(const Duration(seconds: 5), () {

      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const [
          Image(image: NetworkImage("https://images.pexels.com/photos/15292925/pexels-photo-15292925.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load"))
          
        ],
      ),
      
    );
  }
}
