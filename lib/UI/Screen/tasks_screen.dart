import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Style/style.dart';
import 'package:task_management/UI/Screen/create_task.dart';
import 'package:task_management/UI/Screen/profile_update.dart';
import '../Widget/gridview_card_item.dart';
import '../Widget/task_card_item.dart';

class AllTaskScreen extends StatefulWidget {
  const AllTaskScreen({super.key});

  @override
  State<AllTaskScreen> createState() => _AllTaskScreenState();
}

class _AllTaskScreenState extends State<AllTaskScreen> {

  bool showAllremainders = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CyanColor2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textStylenormal("Hello Nabila!"),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                          backgroundColor: whiteColor,
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProfileUpdateScreen()));
                              },
                              child: Image.asset(
                                "assets/images/profile.png",
                                height: 30,
                                width: 30,
                                fit: BoxFit.cover,
                              ))),
                    ),
                  ),
                ],
              ),
              textButtonStyleLight("Let's have a productive day"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextFormField(
                decoration: TextFormfieldStyle("Search", Icon(Icons.search)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),


              GridViewCardItem(),


              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All Remainder",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700)),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showAllremainders = !showAllremainders;
                      });
                    },
                    child: Text(showAllremainders ? "See less" : "See all"),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: showAllremainders ? 10 : 5,
                  itemBuilder: (context, index) {
                    return TaskCardItem();
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateTaskScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


