import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Style/style.dart';
import 'package:task_management/UI/Screen/signup_screen.dart';

import 'main_bottom_navbar.dart';

class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CyanColor2,
      appBar: AppBar(
        backgroundColor: CyanColor1,
        title: Text("Create Task", style: TextStyle(fontSize: 25),),
        centerTitle: true,
        elevation: 0,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                TextFormField(

                  decoration: TextFormfieldStyleCreateTask("Title", ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                TextFormField(
                  maxLines: 6,
                  decoration: TextFormfieldStyleCreateTask("Description",),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                ElevatedButton(
                    style: elevatedButtonStyle(),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MainBottomNavScreen()));
                    }, child: ButtonChildStyle("Create Task")),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
