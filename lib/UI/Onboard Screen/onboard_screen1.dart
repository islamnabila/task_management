import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Style/style.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CyanColor2,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.09,),
              displayImage("assets/images/onboard1.png",context),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              onBoardTextStyleBold("Easily Create New Task"),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              onBoardTextStyleLight(
                  "You can create your task quickly and easily. By priritizing you can track your progress and get a more efficient work experience"),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            ],
          ),
        ),
      ),
    );
  }
}

