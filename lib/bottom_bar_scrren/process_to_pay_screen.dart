import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../all_screen/admin_awaited_page.dart';
import 'order_history.dart';

class processpay extends StatefulWidget {
  const processpay({super.key});

  @override
  State<processpay> createState() => _processpayState();
}

class _processpayState extends State<processpay> {
  String raju ="";
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 50,
                width: 380,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 8),
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                        fontSize: 23, color: Color(customColor("b47d2a"))),
                  ),
                )), 
                SizedBox(height: 15,),
        
        
                Container(height: 150,width: 360,color: Colors.white,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 220),
                      child: Text("Order Summary",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(customColor("b47d2a"))),),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Divider(thickness: 1,color: Colors.grey.shade300,),
                    ),
                    SizedBox(height: 10,),
        
                    RichText(
                        text: TextSpan(text: "", children: [
                          WidgetSpan(child: Padding(
                            padding: const EdgeInsets.only(right: 260),
                            child: Text("Total Items",style: TextStyle(fontWeight: FontWeight.w500),),
                          )), WidgetSpan(child: Text("2",style: TextStyle(fontWeight: FontWeight.w500),))])),
                    SizedBox(height: 5,),
                    RichText(
                        text: TextSpan(text: "", children: [
                          WidgetSpan(child: Padding(
                            padding: const EdgeInsets.only(right: 230),
                            child: Text("Discount",style: TextStyle(fontWeight: FontWeight.w500),),
                          )), WidgetSpan(child: Text("1000.00",style: TextStyle(fontWeight: FontWeight.w500),))])),
                    SizedBox(height: 5,),
                    RichText(
                        text: TextSpan(text: "", children: [
                          WidgetSpan(child: Padding(
                            padding: const EdgeInsets.only(right: 180),
                            child: Text("Amount Payble",style: TextStyle(fontWeight: FontWeight.w500),),
                          )), WidgetSpan(child: Text("28870.00",style: TextStyle(fontWeight: FontWeight.w500),))])),
                  ],),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Radio(value: "Billing address same as shipping address", groupValue: raju , onChanged:(value){
                      setState(() {
                        raju =value.toString();
                      });
                    } ),
                    Text("Billing address same as shipping address")
                  ],
                ),
                Row(
                  children: [
                    Radio(value: "Add new shipping address", groupValue: raju, onChanged: (value){
                      setState(() {
                        raju =value.toString();
                      });
                    }),
                    Text("Add new shipping address")
                  ],
                ),
                SizedBox(height: 5,),


            Container(height: 400,width: 350,color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text("Shipping Address",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(customColor("b47d2a"))),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: Divider(thickness: 0.5,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextFormField(decoration: InputDecoration(hintText: 'Name',hintStyle: TextStyle(color: Colors.grey.shade400)),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextFormField(decoration: InputDecoration(hintText: 'Email ID',hintStyle: TextStyle(color: Colors.grey.shade400)),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextFormField(decoration: InputDecoration(hintText: 'Contact No.',hintStyle: TextStyle(color: Colors.grey.shade400)),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextFormField(decoration: InputDecoration(hintText: 'Address',hintStyle: TextStyle(color: Colors.grey.shade400)),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextFormField(decoration: InputDecoration(hintText: 'Pin code',hintStyle: TextStyle(color: Colors.grey.shade400)),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextFormField(decoration: InputDecoration(hintText: 'City',hintStyle: TextStyle(color: Colors.grey.shade400)),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextFormField(decoration: InputDecoration(hintText: 'State',hintStyle: TextStyle(color: Colors.grey.shade400)),),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 23,right: 22),
              child: Divider(thickness: 0.5,),
            ),
            SizedBox(height: 10,),
            Text("Select Payment Options",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
            SizedBox(height: 10,),
            Image(image: AssetImage("assets/images/paytm.png")),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => order_history(),
                      ));


                },
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Color(customColor("b47d2a"))),
                child: Text(
                  'PROCEED TO PAY',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
