import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vakpati_jewellers_limited/all_screen/buyer_customer_screen.dart';

import '../home_all_screen/home_screen.dart';

class admin_awaited extends StatefulWidget {
  const admin_awaited({super.key});

  @override
  State<admin_awaited> createState() => _admin_awaitedState();
}

class _admin_awaitedState extends State<admin_awaited> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200,),
        Center(child: Image.asset("assets/images/man.png")),

          SizedBox(height: 50,),
          Text("Awaited",style: TextStyle(fontSize: 32,color: Color(customColor("b47d2a"))),),
          SizedBox(height: 18,),
          Text("for your approval by admin",style: TextStyle(fontSize: 18),)
      ],),
      backgroundColor: Colors.white,
    );
  }
}
int customColor(String colorCode) {
  String colors = "0xff" + colorCode;
  colors = colors.replaceAll("#", "");
  return int.parse(colors);
}