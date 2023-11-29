import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Style/style.dart';

import '../Widget/success_resetpass_bottomsheet.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController _passConroller= TextEditingController();
  TextEditingController _confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CyanColor2,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.18,),

                Image.asset("assets/images/login.png", height: MediaQuery.of(context).size.height*0.2, width: MediaQuery.of(context).size.height*0.2, color: SkyColor,),

                SizedBox(height: MediaQuery.of(context).size.height*0.03,),

                textStylenormal("Enter New Password"),

                SizedBox(height: MediaQuery.of(context).size.height*0.03,),

                TextFormField(
                  obscureText: true,
                  decoration: TextFormfieldStyle("Password", Icon(Icons.password)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                TextFormField(
                  obscureText: true,
                  decoration: TextFormfieldStyle("Confirm Password", Icon(Icons.password)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),

                ElevatedButton(
                    style: elevatedButtonStyle(),
                    onPressed: (){
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                        ),
                          context: context, builder: (context){
                        return resetpass_success_bottomsheet();
                      });
                    }, child: ButtonChildStyle("Login")),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

