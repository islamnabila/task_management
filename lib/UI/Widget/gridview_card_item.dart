import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/UI/Widget/reuseable_gridview.dart';

import '../Screen/cancelled_task_screen.dart';
import '../Screen/completed_task_screen.dart';
import '../Screen/new_task_screen.dart';
import '../Screen/progress_task_screen.dart';

class GridViewCardItem extends StatelessWidget {
  const GridViewCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 1.78,
        children: [
          ReuseableGridViewContainer(
            icon: Icons.article_rounded,
            title: 'New Task',
            count: '23',
            backgroundColour: Colors.blue.shade300,
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NewTaskScreen()));
            },
          ),
          ReuseableGridViewContainer(
            icon: Icons.incomplete_circle,
            title: 'In Progress',
            count: '23',
            backgroundColour: Colors.blue.shade700,
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProgressTaskScreen()));
            },
          ),
          ReuseableGridViewContainer(
            icon: Icons.task,
            title: 'Completed',
            count: '23',
            backgroundColour: Colors.deepPurpleAccent.shade700,
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CompletedTaskScreen()));
            },
          ),
          ReuseableGridViewContainer(
            icon: Icons.flag,
            title: 'Cancelled',
            count: '23',
            backgroundColour: Colors.deepPurple.shade900,
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CancelledTaskScreen()));
            },
          )
        ],
      ),
    );
  }
}