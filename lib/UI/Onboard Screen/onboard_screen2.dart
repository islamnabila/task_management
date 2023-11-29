import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Style/style.dart';

class OnBoardScreen2 extends StatelessWidget {
  const OnBoardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CyanColor2,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.09,),
              displayImage("assets/images/onboard2.png",context),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              onBoardTextStyleBold("Handle and organize task"),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              onBoardTextStyleLight(
                  "Set priorities and organize task in an orderly way to manage them effectively. This way you can optimize your workflow and use your time efficiently"),

            ],
          ),
        ),
      ),
    );
  }
}
