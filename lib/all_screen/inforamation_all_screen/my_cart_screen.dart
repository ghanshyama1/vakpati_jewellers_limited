import 'package:counter_button/counter_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter_button/counter_button.dart';

import '../../bottom_bar_scrren/bottom_bar_screen.dart';

class mycartscreen extends StatefulWidget {
  const mycartscreen({super.key});

  @override
  State<mycartscreen> createState() => _mycartscreenState();
}

class _mycartscreenState extends State<mycartscreen> {
  int  _counterValue = 0;
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
                    addIcon: Icon(Icons.add_circle_outline_rounded),
                  removeIcon: Icon(Icons.remove_circle_outline_rounded),
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
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
