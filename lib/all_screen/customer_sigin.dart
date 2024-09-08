import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'buyer_customer_screen.dart';
import 'customer_signup.dart';
import 'otp_screen.dart';

class customer_sigin extends StatefulWidget {
  const customer_sigin({super.key});

  @override
  State<customer_sigin> createState() => _customer_siginState();
}

class _customer_siginState extends State<customer_sigin> {
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
          SizedBox(height: 50,),
          
          Center(child: Text("Customer Sign in",style: TextStyle(fontSize: 20),)),
          SizedBox(height: 30,),
        
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: TextFormField(decoration: InputDecoration(hintText: 'Email Id / Mobile NO.'),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: TextFormField(decoration: InputDecoration(hintText: 'Password'),),
          ),
        
          SizedBox(height: 65,),
          SizedBox(height: 75,width: 250,
            child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => otp_screen(),));},
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Color(customColor("b47d2a"))),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
          SizedBox(height: 20,),
          Text('Forget password?',style: TextStyle(fontSize: 17,color: Colors.grey),),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(right: 30,left: 30),
          child: Divider(color: Colors.grey.shade300,),
        ),
          SizedBox(height: 10,),
          Text.rich(
            TextSpan(
              text: 'You are not registered use click ',
              style: TextStyle(color: Colors.black45),
              children: <TextSpan>[
                TextSpan(
                    text: 'here',
                    recognizer: TapGestureRecognizer()..onTap =()=>
                        Navigator.push(context,MaterialPageRoute
                          (builder: (context) => customer_signup(),)),
                    style: TextStyle(color: Colors.black45,
                      decoration: TextDecoration.underline,
                    )),
                // can add more TextSpans here...
              ],
            ),
          )

        
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