import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Style/style.dart';
import '../Widget/task_card_item.dart';

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CyanColor2,
      appBar: AppBar(
        backgroundColor:CyanColor1 ,
        title: Text('Cancelled Task', style: TextStyle(fontSize: 25),),
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
                Text("10 Task Cancelled", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
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
