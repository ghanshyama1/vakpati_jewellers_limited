import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../bottom_bar_scrren/bottom_bar_screen.dart';
import '../home_all_screen/home_screen.dart';
import 'buyer_customer_screen.dart';

class otp_screen extends StatefulWidget {
  const otp_screen({super.key});

  @override
  State<otp_screen> createState() => _otp_screenState();
}

class _otp_screenState extends State<otp_screen> {

  Color accentPurpleColor = Color(0xFF6A53A1);
  Color primaryColor = Color(0xFF121212);
  Color accentPinkColor = Color(0xFFF99BBD);
  Color accentDarkGreenColor = Color(0xFF115C49);
  Color accentYellowColor = Color(0xFFFFB612);
  Color accentOrangeColor = Color(0xFFEA7A3B);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 70,
          ),
          Center(
              child: SizedBox(
                  height: 250,
                  width: 350,
                  child: Image(image: AssetImage('assets/images/img_1.png')))),
        
          SizedBox(height: 130,),
          Text("Enter your one time password",style: TextStyle(fontSize: 20),),
        
          SizedBox(height: 30,),
        
          OtpTextField(
            numberOfFields: 4,
            borderColor: Color(0xFF121212),
            //set to true to show as box or false to show as dash
            showFieldAsBox: false,
            borderWidth: 2.0,
            fieldWidth: 70,
            cursorColor: Colors.black,

            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode){
              showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  }
              );
            }, // end onSubmit
          ),
          SizedBox(height: 40,),
          SizedBox(height: 68 ,width: 250,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => bottombar(),));
                },
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Color(customColor("b47d2a"))),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),


        
        ],),
      ),
      backgroundColor: Colors.white,
    );
  }
}
int customColor(String colorCode) {
  String colors = "0xff" + colorCode;
  colors = colors.replaceAll("#", "");
  return int.parse(colors);
}