import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Style/style.dart';

class SettingScreen extends StatelessWidget {
   SettingScreen({super.key});
  final List<String> cardTitles = [
    "Profile",
    "Notification Preference",
    "Support and Feedback",
    "About App",
    "Sign Out",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CyanColor2,
      appBar: AppBar(
        backgroundColor: CyanColor1,
        title: Text("Settiings", style: TextStyle(fontSize: 25),),
        centerTitle: true,
        elevation: 0,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount:cardTitles.length, // Change this to the number of cards you want
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: GestureDetector(
                onTap: (){
                  if(index ==4){

                  }
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cardTitles[index], style: TextStyle(fontSize: 16.5),),

                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
