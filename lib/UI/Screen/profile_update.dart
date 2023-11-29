import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Style/style.dart';
import '../Widget/success_resetpass_bottomsheet.dart';

class ProfileUpdateScreen extends StatefulWidget {
  const ProfileUpdateScreen({super.key});

  @override
  State<ProfileUpdateScreen> createState() => _ProfileUpdateScreenState();
}

class _ProfileUpdateScreenState extends State<ProfileUpdateScreen> {
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
                // SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                Container(
                  height: MediaQuery.of(context).size.height*0.2,
                  width: MediaQuery.of(context).size.height*0.2,
                  child: CircleAvatar(
                    backgroundColor: whiteColor,
                    backgroundImage: AssetImage("assets/images/profile.png"),),
                ),

                SizedBox(height: MediaQuery.of(context).size.height*0.03,),

                textStylenormal("Nabila"),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                textButtonStyleLight("snabila@gmail.com"),

                SizedBox(height: MediaQuery.of(context).size.height*0.03,),

                TextFormField(
                  obscureText: true,
                  decoration: TextFormfieldStyle("First Name", Icon(Icons.person)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                TextFormField(
                  obscureText: true,
                  decoration: TextFormfieldStyle("Last Name", Icon(Icons.person)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                TextFormField(
                  obscureText: true,
                  decoration: TextFormfieldStyle("Phone number", Icon(Icons.phone)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                TextFormField(
                  obscureText: true,
                  decoration: TextFormfieldStyle("Password", Icon(Icons.password)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),

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
                    }, child: ButtonChildStyle("Update")),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
