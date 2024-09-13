import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../all_screen/buyer_customer_screen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 15) ,() =>
       Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => buyer_custmer() ,)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(image: AssetImage('assets/images/img.png')),
        ),


          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage('assets/images/img_1.png')),
          ),
      ],),
     backgroundColor: Colors.white,
    );
  }
}
