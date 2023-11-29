import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Style/style.dart';
import '../Widget/task_card_item.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CyanColor2,
      appBar: AppBar(
        backgroundColor:CyanColor1 ,
        title: Text('In Progress Task', style: TextStyle(fontSize: 25),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("10 Task In Progress", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                TextButton(onPressed: (){}, child: Text("Clear All"))
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return TaskCardItem();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
