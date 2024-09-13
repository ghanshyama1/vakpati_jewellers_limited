import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wx_divider/wx_divider.dart';

import '../all_screen/admin_awaited_page.dart';
import 'checkout_screen.dart';

class advance_screen extends StatefulWidget {
  const advance_screen({super.key});

  @override
  State<advance_screen> createState() => _advance_screenState();
}

class _advance_screenState extends State<advance_screen> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              if (scaffoldkey.currentState!.isDrawerOpen) {
                scaffoldkey.currentState!.closeDrawer();
                //close drawer, if drawer is open
              } else {
                scaffoldkey.currentState!.openDrawer();
                //open drawer, if drawer is closed
              }
            },
            icon: Icon(
              Icons.menu,
              size: 35,
              color: Colors.white,
            )),
        backgroundColor: Color(customColor("b47d2a")),
        automaticallyImplyLeading: false,
        title: SizedBox(
            height: 40,
            width: 150,
            child: Image(image: AssetImage("assets/images/home.png"))),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 35,
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Ghanshyam "),
              accountEmail: Text("ghanshyamshikhaliya@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(
                  "G",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Contact us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(children: [
        Container(
            height: 50,
            width: 380,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 8),
              child: Text(
                "Advance Payment receipts",
                style: TextStyle(
                    fontSize: 23, color: Color(customColor("b47d2a"))),
              ),
            )),
            SizedBox(height: 10,),
            Container(height: 430,width: 360,color: Colors.white,
              child: Column(
                children: [
                  Text("PAYMENT RECEIPT",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.grey),),
                  SizedBox(height: 5,),
                  WxDivider(
                    direction: Axis.horizontal,
                    pattern: WxDivider.dashed,
                    color: Colors.black,
                    thickness: 1.0,
                    lines: 1,
                    spacing: 3.0,
                  ),
                  SizedBox(height: 5,),
                  Text("Vakpati Jewellers",style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text("Agrasen Square, 10-A,Sapan Sangeeta Rd,Snehanagar \n           "
                      "       Indore,Madhya Pradesh 452002",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  SizedBox(height: 5,),
                  WxDivider(
                    direction: Axis.horizontal,
                    pattern: WxDivider.dashed,
                    color: Colors.black,
                    thickness: 1.0,
                    lines: 1,
                    spacing: 3.0,
                  ),
                  RichText(
                      text: TextSpan(text: "", children: [
                        WidgetSpan(child: Padding(
                          padding: const EdgeInsets.only(right: 212),
                          child: Text("Order ID ",style: TextStyle(fontWeight: FontWeight.w500),),
                        )), WidgetSpan(child: Text("# VP -1256",style: TextStyle(fontWeight: FontWeight.w500),))])),
                  SizedBox(height: 5,),
                  RichText(
                      text: TextSpan(text: "", children: [
                        WidgetSpan(child: Padding(
                          padding: const EdgeInsets.only(right: 189),
                          child: Text("Payment Method ",style: TextStyle(fontWeight: FontWeight.w500),),
                        )), WidgetSpan(child: Text("Paytm",style: TextStyle(fontWeight: FontWeight.w500),))])),
                  SizedBox(height: 5,),
                  RichText(
                      text: TextSpan(text: "", children: [
                        WidgetSpan(child: Padding(
                          padding: const EdgeInsets.only(right: 170),
                          child: Text("Payment Date",style: TextStyle(fontWeight: FontWeight.w500),),
                        )), WidgetSpan(child: Text("25 May 2019",style: TextStyle(fontWeight: FontWeight.w500),))])),
                  SizedBox(height: 5,),
                  RichText(
                      text: TextSpan(text: "", children: [
                        WidgetSpan(child: Padding(
                          padding: const EdgeInsets.only(right: 190),
                          child: Text("Order Date",style: TextStyle(fontWeight: FontWeight.w500),),
                        )), WidgetSpan(child: Text("22 May 2019",style: TextStyle(fontWeight: FontWeight.w500),))])),
                  SizedBox(height: 5,),
                  WxDivider(
                    direction: Axis.horizontal,
                    pattern: WxDivider.dashed,
                    color: Colors.black,
                    thickness: 1.0,
                    lines: 1,
                    spacing: 3.0,
                  ),
                  SizedBox(height: 10,),
                  RichText(
                      text: TextSpan(text: "", children: [
                        WidgetSpan(child: Padding(
                          padding: const EdgeInsets.only(right: 100,bottom: 10),
                          child: Text("Deposit Amount in Rs.",style: TextStyle(fontWeight: FontWeight.w500),),
                        )), WidgetSpan(child: Text("5000.00",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.grey.shade700),))])),
                  SizedBox(height: 10,),
                  WxDivider(
                    direction: Axis.horizontal,
                    pattern: WxDivider.dashed,
                    color: Colors.black,
                    thickness: 1.0,
                    lines: 1,
                    spacing: 3.0,
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(right: 140),
                    child: Text("Amount in Words : Five thousand only.",style: TextStyle(fontSize: 12,color: Colors.grey),),
                  ),
                  SizedBox(height: 10,),
                  WxDivider(
                    direction: Axis.horizontal,
                    pattern: WxDivider.dashed,
                    color: Colors.black,
                    thickness: 1.0,
                    lines: 1,
                    spacing: 3.0,
                  ),
                  SizedBox(height: 10,),
                  RichText(
                      text: TextSpan(text: "", children: [
                        WidgetSpan(child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Text("Company GST : AFAPG5544F ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                        )), WidgetSpan(child: Text("*Terms & Condition Apply",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),))])),
                  SizedBox(height: 10,),
                  WxDivider(
                    direction: Axis.horizontal,
                    pattern: WxDivider.dashed,
                    color: Colors.black,
                    thickness: 1.0,
                    lines: 1,
                    spacing: 3.0,
                  ),
                  SizedBox(height: 10,),
                  Text("subject to all judgement in indore",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
        SizedBox(height: 10,),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => checkout(),));



            },
            style: ElevatedButton.styleFrom(
                textStyle: TextStyle(),
                backgroundColor: Color(customColor("b47d2a"))),
            child: Text(
              'SHARE RECEIPT',
              style: TextStyle(fontSize: 15, color: Colors.white),
            )),
      ],),

    );
  }
}
