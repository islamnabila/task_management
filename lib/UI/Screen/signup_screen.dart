import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/Style/style.dart';
import 'package:task_management/UI/Screen/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CyanColor2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                textStylenormal("Create your account"),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                TextFormField(
                  // controller: _emailController,
                  decoration: TextFormfieldStyle("Email", Icon(Icons.email)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                TextFormField(
                  // controller: _emailController,
                  decoration: TextFormfieldStyle("First Name", Icon(Icons.person)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                TextFormField(
                  // controller: _emailController,
                  decoration: TextFormfieldStyle("Last Name", Icon(Icons.person)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                TextFormField(
                  // controller: _passwordControler,
                  obscureText: true,
                  decoration: TextFormfieldStyle("Password", Icon(Icons.password)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                ElevatedButton(
                    style: elevatedButtonStyle(),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    }, child: ButtonChildStyle("Register")),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Text("--Or register with--",style: TextStyle(fontSize: 16,),),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                registerWith(),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    }, child: textButtonStyleAccount("Login"))
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
