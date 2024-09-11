import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../all_screen/admin_awaited_page.dart';
import 'my_order_tracking_screen.dart';

class order_history extends StatefulWidget {
  const order_history({super.key});

  @override
  State<order_history> createState() => _order_historyState();
}

class _order_historyState extends State<order_history> {
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
        child: Column(children: [
          Container(
              height: 50,
              width: 380,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 8),
                child: Text(
                  "Order History",
                  style: TextStyle(
                      fontSize: 23, color: Color(customColor("b47d2a"))),
                ),
              )),
            SizedBox(height: 10,),
        
          Container(height: 180,width: 360,color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 220,top: 10),
                child: Text("Order ID #121",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(customColor("b47d2a"))),),
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
                      padding: const EdgeInsets.only(right: 150),
                      child: Text("Invoice No.",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Text("VP -1256/2019-20",style: TextStyle(fontWeight: FontWeight.w500),))])),
              SizedBox(height: 5,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 190),
                      child: Text("Order Date",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Text("25 May 2019",style: TextStyle(fontWeight: FontWeight.w500),))])),
              SizedBox(height: 5,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 190),
                      child: Text("Order Amount ",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Text("28870.00",style: TextStyle(fontWeight: FontWeight.w500),))])),
              SizedBox(height: 5,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 190),
                      child: Text("Payment Method ",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Text("Paytm",style: TextStyle(fontWeight: FontWeight.w500),))])),
        
            ],),
          ),
          SizedBox(height: 10,),
          Container(height: 400,width: 360,color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 110),
                  child: Text("Billing and Shipping Address",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(customColor("b47d2a"))),),
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
          SizedBox(height: 10,),
          Container(height: 150,width: 360,color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 190,top: 10),
                child: Text("Product Summary",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(customColor("b47d2a"))),),
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
                      padding: const EdgeInsets.only(right: 170),
                      child: Text("Items",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Text("Qty",style: TextStyle(fontWeight: FontWeight.w500),),
                    )),
                    WidgetSpan(child: Text("Amount",style: TextStyle(fontWeight: FontWeight.w500),)),
                  ])),
              SizedBox(height: 5,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Text("Gold Ring",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                    )), WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 65),
                      child: Text("1",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                    )),
                    WidgetSpan(child: Text("14000.00",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),)),
                  ])),
              SizedBox(height: 5,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Text("Gold Ring",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                    )), WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 65),
                      child: Text("1",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                    )),
                    WidgetSpan(child: Text("14000.00",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),)),
                  ])),


            ],),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ordertrackingscreen(),
                    ));


              },
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(),
                  backgroundColor: Color(customColor("b47d2a"))),
              child: Text(
                'VIEW INVOICE',
                style: TextStyle(fontSize: 15, color: Colors.white),
              )),



        ],),
      ),
    );
  }
}
