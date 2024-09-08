import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../all_screen/admin_awaited_page.dart';
import '../all_screen/inforamation_all_screen/my_cart_screen.dart';

class addtocartscreen extends StatefulWidget {
  const addtocartscreen({super.key});

  @override
  State<addtocartscreen> createState() => _addtocartscreenState();
}

class _addtocartscreenState extends State<addtocartscreen> {
  Color size1 = Colors.grey.shade50;
  Color size2 = Colors.grey.shade50;
  Color size3 = Colors.grey.shade50;
  Color size4 = Colors.grey.shade50;
  Color size5 = Colors.grey.shade50;

  double fullrating = 0;
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
                  "Gold Dimond Ring",
                  style: TextStyle(
                      fontSize: 23, color: Color(customColor("b47d2a"))),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            height: 350,
            width: 350,
            child: ImageSlideshow(
              /// Width of the [ImageSlideshow].
              width: double.infinity,

              height: 300,

              initialPage: 0,

              /// The color to paint the indicator.
              indicatorColor: Colors.blue,

              indicatorBackgroundColor: Colors.grey,

              children: [
                Image.asset(
                  'assets/images/kang.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/kang1.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/kang2.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/kang3.png',
                  fit: BoxFit.cover,
                ),
              ],
              autoPlayInterval: 3000,

              /// Loops back to first slide.
              isLoop: true,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                    color: Colors.white,
                    height: 50,
                    width: 100,
                    child: Center(
                        child: Text(
                      "Rating - $fullrating",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ))),
              ),
              Container(
                color: Colors.white,
                height: 50,
                width: 250,
                child: Center(
                  child: RatingBar.builder(
                      itemCount: 5,
                      updateOnDrag: true,
                      itemSize: 25,
                      initialRating: 0,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                      onRatingUpdate: (ratingvalue) {
                        setState(() {
                          fullrating = ratingvalue;
                        });
                      }),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text("Size - "),
              SizedBox(
                width: 10,
              ),
              InkWell(
                child: Container(
                    height: 22,
                    width: 40,
                    decoration: BoxDecoration(
                        color: size1,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(child: Text("2.5"))),
                onTap: () {
                  setState(() {
                    size1 = size1 == Color(customColor("b47d2a"))
                        ? Colors.grey.shade50
                        : Color(customColor("b47d2a"));
                  });
                },
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                child: Container(
                    height: 22,
                    width: 40,
                    decoration: BoxDecoration(
                        color: size2,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(child: Text("3.0"))),
                onTap: () {
                  setState(() {
                    size2 = size2 == Color(customColor("b47d2a"))
                        ? Colors.grey.shade50
                        : Color(customColor("b47d2a"));
                  });
                },
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                child: Container(
                    height: 22,
                    width: 40,
                    decoration: BoxDecoration(
                        color: size3,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(child: Text("3.5"))),
                onTap: () {
                  setState(() {
                    size3 = size3 == Color(customColor("b47d2a"))
                        ? Colors.grey.shade50
                        : Color(customColor("b47d2a"));
                  });
                },
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                child: Container(
                    height: 22,
                    width: 40,
                    decoration: BoxDecoration(
                        color: size4,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(child: Text("4.0"))),
                onTap: () {
                  setState(() {
                    size4 = size4 == Color(customColor("b47d2a"))
                        ? Colors.grey.shade50
                        : Color(customColor("b47d2a"));
                  });
                },
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                child: Container(
                    height: 22,
                    width: 40,
                    decoration: BoxDecoration(
                        color: size5,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(child: Text("4.5"))),
                onTap: () {
                  setState(() {
                    size5 = size5 == Color(customColor("b47d2a"))
                        ? Colors.grey.shade50
                        : Color(customColor("b47d2a"));
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 240),
            child: Text(
              "MRP - 14599/-",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Offer Price - 14599/-",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    color: Color(customColor("b47d2a"))),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => mycartscreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(),
                      backgroundColor: Color(customColor("b47d2a"))),
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
