import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customer_sigin.dart';

class buyer_custmer extends StatefulWidget {
  const buyer_custmer({super.key});

  @override
  State<buyer_custmer> createState() => _buyer_custmerState();
}

class _buyer_custmerState extends State<buyer_custmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
              child: SizedBox(
                  height: 250,
                  width: 350,
                  child: Image(image: AssetImage('assets/images/img_1.png')))),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 70,
            width: 250,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Color(customColor("b47d2a"))),
                child: Text(
                  'ARE YOU BUYER',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 70,
            width: 250,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => customer_sigin(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Colors.grey.shade300),
                child: Text(
                  'ARE YOU CUSTOMER',
                  style: TextStyle(
                      fontSize: 18, color: Color(customColor("b47d2a"))),
                )),
          ),
        ],
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
