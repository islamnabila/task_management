import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Style/style.dart';

class ReuseableGridViewContainer extends StatelessWidget {
  const ReuseableGridViewContainer({super.key, required this.title, required this.count, required this.icon, required this.backgroundColour, required this.ontap});
  final String title, count;
  final IconData icon;
  final Color backgroundColour;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundColour
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(icon, color: CyanColor1,),
                Text(title, style: TextStyle(fontSize: 18, color: whiteColor),),
                Text(count, style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold , color: whiteColor),)
              ],
            ),
          ),
        ),
    );

  }
}
