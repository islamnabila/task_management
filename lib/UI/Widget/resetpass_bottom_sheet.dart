import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Style/style.dart';

import '../Screen/reset_pass.dart';

class ResetPasswordBottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          Image.asset(
            "assets/images/mobile.png",
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.height * 0.2,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          Text("Reset Password", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          Text("Link has been sent to your email", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          ElevatedButton(
            style: elevatedButtonStyle(),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordScreen()));
            }, child: ButtonChildStyle("Click here to login"),
          ),
        ],
      ),
    );
  }
}