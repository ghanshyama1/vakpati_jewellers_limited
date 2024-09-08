import 'package:flutter/material.dart';

import 'admin_awaited_page.dart';

class customer_signup extends StatefulWidget {
  const customer_signup({super.key});

  @override
  State<customer_signup> createState() => _customer_signupState();
}

class _customer_signupState extends State<customer_signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 70,
        ),
        Center(
            child: SizedBox(
                height: 180,
                width: 350,
                child: Image(image: AssetImage('assets/images/img_1.png')))),
        SizedBox(height: 20,),

        Center(child: Text("Customer Sign Up",style: TextStyle(fontSize: 20),)),


        SizedBox(height: 15,),

        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: TextFormField(decoration: InputDecoration(hintText: 'Name'),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: TextFormField(decoration: InputDecoration(hintText: 'Mobile No.'),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: TextFormField(decoration: InputDecoration(hintText: 'Email Id'),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: TextFormField(decoration: InputDecoration(hintText: 'Password'),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: TextFormField(decoration: InputDecoration(hintText: 'Confirm Password'),),
        ),

        SizedBox(height: 30,),
        SizedBox(height: 68 ,width: 250,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => admin_awaited(),));
              },
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(),
                  backgroundColor: Color(customColor("b47d2a"))),
              child: Text(
                'SIGN IN',
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(right: 30,left: 30),
          child: Divider(color: Colors.grey.shade300,),
        ),
        SizedBox(height: 15,),
        Text("Are you running customer click here",style: TextStyle(color: Colors.grey),)



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