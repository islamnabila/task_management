import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/UI/Screen/login_screen.dart';

import '../../Style/style.dart';
import '../Screen/reset_pass.dart';

class resetpass_success_bottomsheet extends StatelessWidget {
  const resetpass_success_bottomsheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.18,),
          Text("Congratulation", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          Text("Password reset successfully", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          ElevatedButton(
            style: elevatedButtonStyle(),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            }, child: ButtonChildStyle("Login"),
          ),
        ],
      ),
    );
  }
}
