import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCardItem extends StatelessWidget {
  const TaskCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
            Text("Description"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Date : 12-02-23"),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete), color: Colors.blue.shade900,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit), color: Colors.blue.shade900,),
                  ],
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}