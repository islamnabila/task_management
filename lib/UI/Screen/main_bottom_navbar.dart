import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Style/style.dart';
import 'package:task_management/UI/Screen/login_screen.dart';
import 'package:task_management/UI/Screen/setting_screen.dart';
import 'package:task_management/UI/Screen/tasks_screen.dart';

import 'calender_screen.dart';
import 'create_task.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;
  List<Widget> _screen =[
    AllTaskScreen(),
    CalenderScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.grey,
        backgroundColor: CyanColor1,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: "Calender",),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings",)
        ],
      ),
    );
  }
}
