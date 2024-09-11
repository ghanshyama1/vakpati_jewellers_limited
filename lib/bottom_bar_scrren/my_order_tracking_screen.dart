import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';


import '../all_screen/admin_awaited_page.dart';
import 'my_invoice_screen.dart';

class ordertrackingscreen extends StatefulWidget {
  const ordertrackingscreen({super.key});

  @override
  State<ordertrackingscreen> createState() => _ordertrackingscreenState();
}

class _ordertrackingscreenState extends State<ordertrackingscreen> {
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
      body: Column(
        children: [
          Container(
              height: 50,
              width: 380,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 8),
                child: Text(
                  "My Order History",
                  style: TextStyle(
                      fontSize: 23, color: Color(customColor("b47d2a"))),
                ),
              )),
          SizedBox(height: 10,),


        Container(height: 450,width: 350,color: Colors.white,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 210, top: 8),
              child: Text(
                "Order Tracking",
                style: TextStyle(
                    fontSize: 20, color: Color(customColor("b47d2a"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Divider(thickness: 0.5,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70,top: 40),
              child: OrderTrackerZen(isShrinked: true,
                tracker_data: [
                  TrackerData(
                    title: "Order Placed",
                    date: "25 May 2019",

                    tracker_details: [

                    ],
                  ),
                  TrackerData(
                    title: "Packed",
                    date: "26 May 2019",
                    tracker_details: [

                    ],
                  ),
                  TrackerData(
                    title: "Dispatched",
                    date: "27 May 2019",
                    tracker_details: [


                    ],
                  ),
                  TrackerData(
                    title: "Out for Delivery",
                    date: "28 May 2019",
                    tracker_details: [
                    ],
                  ),
                  TrackerData(
                    title: "Delivered,",
                    date: "28 May 2019",
                    tracker_details: [


                    ],
                  ),
                ],

              ),
            ),
          ],),
        ),

          SizedBox(height: 70,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => my_invoice(),
                    ));


              },
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(),
                  backgroundColor: Color(customColor("b47d2a"))),
              child: Text(
                'VIEW INVOICE',
                style: TextStyle(fontSize: 15, color: Colors.white),
              )),


        ],
      ),

    );
  }
}
