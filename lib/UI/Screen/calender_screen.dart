import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task_management/Style/style.dart';

import '../Widget/gridview_card_item.dart';
import '../Widget/task_card_item.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {

  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusday){
    setState(() {
      today=day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CyanColor2,
        appBar: AppBar(
          backgroundColor: CyanColor1,
          title: Text(
            "Calender",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 200, right: 20),
                child: Container(
                  child: TableCalendar(
                    rowHeight: 42,
                    headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        titleTextStyle:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    availableGestures: AvailableGestures.all,
                    selectedDayPredicate: (day)=>isSameDay(day, today),
                    focusedDay:today,
                    firstDay: DateTime.utc(2000, 1, 1),
                    lastDay: DateTime.utc(2050, 1, 1),
                    onDaySelected: _onDaySelected
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Text("Scedule Today", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
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
        ));
  }
}
