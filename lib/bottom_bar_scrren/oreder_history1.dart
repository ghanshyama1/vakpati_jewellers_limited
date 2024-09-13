import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wx_divider/wx_divider.dart';

import '../all_screen/admin_awaited_page.dart';
import 'advance_payment_screen.dart';

class orderhistory1 extends StatefulWidget {
  const orderhistory1({super.key});

  @override
  State<orderhistory1> createState() => _orderhistory1State();
}

class _orderhistory1State extends State<orderhistory1> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  bool item =true;
  bool item1 =true;
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
                    "Order History",
                    style: TextStyle(
                        fontSize: 23, color: Color(customColor("b47d2a"))),
                  ),
                )),
            SizedBox(height: 10,),
            Container(height: 170,width: 360,color: Colors.white,
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
                SizedBox(height: 5,),
                RichText(
                    text: TextSpan(text: "", children: [
                      WidgetSpan(child: Padding(
                        padding: const EdgeInsets.only(right: 190),
                        child: Text("Advance Deposit",style: TextStyle(fontWeight: FontWeight.w500),),
                      )), WidgetSpan(child: Text("5000.00",style: TextStyle(fontWeight: FontWeight.w500),))])),

              ],),
            ),
            SizedBox(height: 10,),
            Container(
                height: 50,
                width: 360,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 8),
                  child: Text(
                    "Billing and Shipping Address",
                    style: TextStyle(
                        fontSize: 23, color: Color(customColor("b47d2a"))),
                  ),
                )),
                SizedBox(height: 10,),
            Container(height: 365,width: 360,color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 180, top: 8),
                    child: Text(
                      "Product Summary",
                      style: TextStyle(
                          fontSize: 20, color: Color(customColor("b47d2a"))),
                    ),
                  ),
                  Divider(thickness: 0.2,color: Colors.grey,),
                  Container(height: 150,width: 350,color: Colors.grey.shade100,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(value: item, onChanged: (val){
                              setState(() {
                                item=val!;
                              });
                            }),
                            Text("Item Description",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Divider(thickness: 1,),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text("Gold Dimond Ring",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                        ),
                        RichText(
                            text: TextSpan(text: "", children: [
                              WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text("Qty",style: TextStyle(fontWeight: FontWeight.w500),),
                              )), WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text("Product Amt.",style: TextStyle(fontWeight: FontWeight.w500),),
                              )),
                              WidgetSpan(child: Text("Deposit Amt.",style: TextStyle(fontWeight: FontWeight.w500),)),
                              WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text("Remaining Amt.",style: TextStyle(fontWeight: FontWeight.w500),),
                              )),
                            ])),
                        SizedBox(height: 5,),
                        RichText(
                            text: TextSpan(text: "", children: [
                              WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text("1",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                              )), WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Text("14000.00",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                              )),
                              WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Text("2500.00",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                              )),
                              WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text("11500.00",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                              )),
                            ])),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(height: 150,width: 350,color: Colors.grey.shade100,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(value: item1, onChanged: (val){
                              setState(() {
                                item1=val!;
                              });
                            }),
                            Text("Item Description",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Divider(thickness: 1,),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text("Gold Dimond Ring",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                        ),
                        RichText(
                            text: TextSpan(text: "", children: [
                              WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text("Qty",style: TextStyle(fontWeight: FontWeight.w500),),
                              )), WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text("Product Amt.",style: TextStyle(fontWeight: FontWeight.w500),),
                              )),
                              WidgetSpan(child: Text("Deposit Amt.",style: TextStyle(fontWeight: FontWeight.w500),)),
                              WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text("Remaining Amt.",style: TextStyle(fontWeight: FontWeight.w500),),
                              )),
                            ])),
                        SizedBox(height: 5,),
                        RichText(
                            text: TextSpan(text: "", children: [
                              WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Text("1",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                              )), WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Text("14000.00",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                              )),
                              WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Text("2500.00",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                              )),
                              WidgetSpan(child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text("11500.00",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                              )),
                            ])),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 40,width: 350,color: Colors.white,
              child: Column(
                children: [
                  RichText(
                      text: TextSpan(text: "", children: [
                        WidgetSpan(child: Padding(
                          padding: const EdgeInsets.only(right: 140),
                          child: Text("Amount Payble",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(customColor("b47d2a"))),),
                        )), WidgetSpan(child: Padding(
                          padding: const EdgeInsets.only(top: 10,),
                          child: Text("11500.00",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(customColor("b47d2a"))),),
                        ))])),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                            backgroundColor: Colors.white,
                           icon: Padding(
                             padding: const EdgeInsets.only(left: 240),
                             child: IconButton(onPressed: (){
                               Navigator.pop(context);
                             }, icon: Icon(Icons.cancel_outlined)),
                           ),
                           title: Text("Advance Payment"),
                            actions: [
                              WxDivider(
                                direction: Axis.horizontal,
                                pattern: WxDivider.dashed,
                                color: Colors.black,
                                thickness: 1.0,
                                lines: 1,
                                spacing: 3.0,
                              ),
                              SizedBox(height: 5,),
                              Column(
                                children: [
                                  RichText(
                                      text: TextSpan(text: "", children: [
                                        WidgetSpan(child: Padding(
                                          padding: const EdgeInsets.only(right: 50),
                                          child: Text("Total Payble Amount",style: TextStyle(fontWeight: FontWeight.w500),),
                                        )), WidgetSpan(child: Text("23870.00",style: TextStyle(fontWeight: FontWeight.w500),))])),
                                  SizedBox(height: 20,),
                                  TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Enter Advance Payment Amount"),),
                                  SizedBox(height: 20,),
                                  Center(child: Text("Select payment Options",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)),
                                  SizedBox(height: 10,),
                                  Image(image: AssetImage("assets/images/paytm.png")),
                                  SizedBox(height: 10,),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  advance_screen(),));



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



                            ],
                          );
                        },
                      );



                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(),
                        backgroundColor: Color(customColor("b47d2a"))),
                    child: Text(
                      'ADVANCE PAY',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => advance_screen(),));



                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(),
                        backgroundColor: Color(customColor("b47d2a"))),
                    child: Text(
                      'PROCEED TO PAY',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
              ],
            )

          ],
        ),
      ),
    );
  }
}
