
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const whiteColor = Color.fromRGBO(255, 255, 255, 1);
const amberColor = Color.fromRGBO(239, 200, 8, 1);
const SkyColor = Color.fromRGBO(141, 203, 230,1);
const CyanColor1 = Color.fromRGBO(157, 241, 223,1);
const CyanColor2 = Color.fromRGBO(227, 246, 255,1);

ButtonStyle elevatedButtonStyle(){
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8)
    ),
    backgroundColor: Colors.transparent,
    elevation: 1,
    padding: EdgeInsets.all(0)
  );
}

Ink ButtonChildStyle(text){
  return Ink(
    decoration: BoxDecoration(
      color: amberColor,
      borderRadius: BorderRadius.circular(8)
    ),
    child: Container(
      height: 56,
      alignment: Alignment.center,
      child: Text(text,style: TextStyle(fontSize: 20),),
    ),
  );
}

Text textStyleGrey(text){
  return Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey.shade500),);
}




//OnBoarding Screen Image Style
Widget displayImage(String image,BuildContext context) {
  return Image.asset(image,
    height: MediaQuery.of(context).size.height*0.3,
    width: MediaQuery.of(context).size.height*0.34,
    fit: BoxFit.cover,);
}
//On boarding Screen Bold text Style
Text onBoardTextStyleBold(text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  );
}


//onboarding Screen Light text style
Text onBoardTextStyleLight(text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      color: Colors.grey.shade600
    ),
    textAlign: TextAlign.center,
  );
}


//textStyle 1
Text textStylenormal(text){
  return Text(text, style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),);
}

InputDecoration TextFormfieldStyle(hintText, picon){
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: Colors.transparent, width: 1
      )
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: SkyColor, width: 1
      )
    ),
    fillColor: CyanColor1,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20)
    ),
      hintText: hintText,
    prefixIcon: picon,
  );
}


InputDecoration TextFormfieldStyleCreateTask(hintText,){
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
            color: Colors.transparent, width: 1
        )
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
            color: SkyColor, width: 1
        )
    ),
    fillColor: whiteColor,
    filled: true,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20)
    ),
    hintText: hintText,
  );
}



//Login screen resigter with google facebook image
Row registerWith(){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset("assets/images/google.png",height: 40, width: 40,),
      Image.asset("assets/images/facebook.png",height: 40, width: 40,),
      Image.asset("assets/images/twitter.png",height: 40, width: 40,)
    ],
  );
}

//Do not have an account? register
 Text textButtonStyleAccount(text){
  return Text(text,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),);
 }

Text textButtonStyleLight(text){
  return Text(text,style: TextStyle(fontSize: 16,),);
}