import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Style/style.dart';

import '../Onboard Screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();
    gotoOnboardScreen();
  }

  Future<void> gotoOnboardScreen()async {
  Timer(Duration(seconds: 2), () {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen(),), (route) => false);
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Image.asset("assets/images/splash.jpg",
          height: MediaQuery.of(context).size.height*0.3,
          width: MediaQuery.of(context).size.height*0.4,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
