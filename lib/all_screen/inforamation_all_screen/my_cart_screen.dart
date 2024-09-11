import 'package:counter_button/counter_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter_button/counter_button.dart';

import '../../bottom_bar_scrren/bottom_bar_screen.dart';
import '../../bottom_bar_scrren/process_to_pay_screen.dart';

class mycartscreen extends StatefulWidget {
  const mycartscreen({super.key});

  @override
  State<mycartscreen> createState() => _mycartscreenState();
}

class _mycartscreenState extends State<mycartscreen> {
  int _counterValue = 0;
  final scaffoldkey = GlobalKey<ScaffoldState>();
  List<String> ringImages = [
    "assets/images/pro1.png",
    "assets/images/pro2.png",
  ];
  List<String> productName = [
    "Gold ring",
    "Gold ring",
  ];
  List<String> productPrice = [
    "Rs.14500.00",
    "Rs.14500.00",
  ];

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
      body: Column(
        children: [
          Container(
              height: 50,
              width: 380,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 8),
                child: Text(
                  "My Cart",
                  style: TextStyle(
                      fontSize: 23, color: Color(customColor("b47d2a"))),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: productName.length,
            itemBuilder: (context, index) {
              return Card(
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                color: Colors.white,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Image(
                                height: 100,
                                width: 100,
                                image: AssetImage(ringImages[index].toString()),
                              ),
                              VerticalDivider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productName[index].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    productPrice[index].toString(),
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(customColor("b47d2a"))),
                                  ),
                                  CounterButton(
                                    addIcon:
                                        Icon(Icons.add_circle_outline_rounded),
                                    removeIcon: Icon(
                                        Icons.remove_circle_outline_rounded),
                                    loading: false,
                                    onChange: (int val) {
                                      setState(() {
                                        if (val >= 0) {
                                          _counterValue = val;
                                        }
                                      });
                                    },
                                    count: _counterValue,
                                    countColor: Colors.black,
                                    buttonColor: Colors.grey,
                                    progressColor: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),


            Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: RichText(
                        text: TextSpan(text: "", children: [
                          WidgetSpan(child: Text("item Total")), WidgetSpan(child: Padding(
                            padding: const EdgeInsets.only(left: 60), child: Text("29000.00"),))])),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: RichText(
                        text: TextSpan(text: "", children: [
                          WidgetSpan(child: Text("CGST(1.5%)")), WidgetSpan(child: Padding(
                            padding: const EdgeInsets.only(left: 80,), child: Text("435.00"),))])),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: RichText(
                        text: TextSpan(text: "", children: [
                          WidgetSpan(child: Text("SGST(1.5%)")), WidgetSpan(child: Padding(
                            padding: const EdgeInsets.only(left: 80), child: Text("435.00"),))])),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: RichText(
                        text: TextSpan(text: "", children: [
                          WidgetSpan(child: Text("Discount")), WidgetSpan(child: Padding(
                            padding: const EdgeInsets.only(left: 80), child: Text("1000.00"),))])),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: RichText(
                        text: TextSpan(text: "", children: [
                          WidgetSpan(child: Text("Grand Total",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),)), WidgetSpan(child: Padding(
                            padding: const EdgeInsets.only(left: 30), child: Text("28870.00",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),))])),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Divider(thickness: 0.5,color: Colors.grey,height: 25,),
                  ),
                  SizedBox(height: 10,),

                  Container(height: 50,width: 350,
                    decoration: BoxDecoration
                      (borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,border: Border.all(color: Colors.grey.shade300)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Text("Apply discount coupon" , style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      SizedBox(height: 40,width: 140,
                        child: ElevatedButton(
                            onPressed: () {

                            },
                            style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(),
                                backgroundColor: Color(customColor("b47d2a"))),
                            child: Text(
                              'APPLY',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            )),
                      ),
                    ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Divider(thickness: 0.5,color: Colors.grey,height: 25,),
                  ),


                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => processpay(),
                              ));

                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(),
                            backgroundColor: Color(customColor("b47d2a"))),
                        child: Text(
                          'CONTINUE SHOPPING',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )),

                    SizedBox(
                      child: ElevatedButton(
                          onPressed: () {

                          },
                          style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(),
                              backgroundColor: Color(customColor("b47d2a"))),
                          child: Text(
                            'PROCEED TO PAY',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )),
                    ),

                  ],)



                ],
              ),
            )

        ],
      ),
    );
  }
}
