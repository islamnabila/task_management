import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Style/style.dart';
import 'package:task_management/UI/Screen/main_bottom_navbar.dart';
import 'package:task_management/UI/Screen/signup_screen.dart';
import 'package:task_management/UI/Screen/tasks_screen.dart';

import '../Widget/resetpass_bottom_sheet.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordControler = TextEditingController();

  void _showResetPasswordBottomSheet() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
      ),
      context: context,
      builder: (context) {
        return ResetPasswordBottomSheetContent();
      },
    );
  }
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
                SizedBox(height: MediaQuery.of(context).size.height*0.12,),
                textStylenormal("Login into your account"),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                TextFormField(
                  controller: _emailController,
                  decoration: TextFormfieldStyle("Email", Icon(Icons.email)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                TextFormField(
                  controller: _passwordControler,
                  obscureText: true,
                  decoration: TextFormfieldStyle("Password", Icon(Icons.password)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                Align(
                  alignment: Alignment.centerLeft,
                    child: TextButton(onPressed: (){
                      _showResetPasswordBottomSheet();
                    }, child: Text("Forget Password", style: TextStyle(fontSize: 16, color: Colors.grey.shade500),))),
                ElevatedButton(
                  style: elevatedButtonStyle(),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainBottomNavScreen()));
                    }, child: ButtonChildStyle("Login")),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Text("--Or register with--",style: TextStyle(fontSize: 16,),),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                registerWith(),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have an account?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                    }, child: textButtonStyleAccount("Register"))
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordControler.dispose();
    super.dispose();
  }
}
