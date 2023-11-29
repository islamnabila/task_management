import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Style/style.dart';
import '../Screen/login_screen.dart';
import 'onboard_screen1.dart';
import 'onboard_screen2.dart';
import 'onboard_screen3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  void _navigateToNextScreen() {
    if (_controller.page == 0) {
      _controller.animateToPage(
        1,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else if (_controller.page == 1) {
      _controller.animateToPage(
        2,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }
  }

  void _skipToNextScreen() {
    if (_controller.page == 2) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    } else {
      _controller.animateToPage(
        2,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              OnBoardingScreen1(),
              OnBoardScreen2(),
              OnBoardScreen3(),
            ],
          ),

          Positioned(
            right: 0,
            left: 0,
            bottom: MediaQuery.of(context).size.height*-0.065,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SmoothPageIndicator(controller: _controller, count: 3),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: ElevatedButton(
                    style: elevatedButtonStyle(),
                      onPressed:_navigateToNextScreen,
                      child: ButtonChildStyle("Get Started")),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                TextButton(onPressed: _skipToNextScreen, child: Text("Skip", style:TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade500),)),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),

              ],
            ),
          )


        ]),
    );
  }
}
