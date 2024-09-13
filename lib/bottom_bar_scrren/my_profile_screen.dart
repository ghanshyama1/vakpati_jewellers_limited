import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../all_screen/admin_awaited_page.dart';
import 'oreder_history1.dart';

class myprofile extends StatefulWidget {
  const myprofile({super.key});

  @override
  State<myprofile> createState() => _myprofileState();
}

class _myprofileState extends State<myprofile> {
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
                  "My Profile",
                  style: TextStyle(
                      fontSize: 23, color: Color(customColor("b47d2a"))),
                ),
              )),
          SizedBox(height: 10,),
          Container(height: 350,width: 350,color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(decoration: InputDecoration(hintText: 'Name',hintStyle: TextStyle(color: Colors.black)),),
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(decoration: InputDecoration(hintText: 'Email ID',hintStyle: TextStyle(color: Colors.black)),),
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(decoration: InputDecoration(hintText: 'Contact No.',hintStyle: TextStyle(color: Colors.black)),),
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(decoration: InputDecoration(hintText: 'Address',hintStyle: TextStyle(color: Colors.black)),),
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(decoration: InputDecoration(hintText: 'Pin code',hintStyle: TextStyle(color: Colors.black)),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(decoration: InputDecoration(hintText: 'City',hintStyle: TextStyle(color: Colors.black)),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(decoration: InputDecoration(hintText: 'State',hintStyle: TextStyle(color: Colors.black)),),
              ),
        
            ],),
          ),
          SizedBox(height: 20,),
          SizedBox(height: 45,width: 170,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  orderhistory1(),));
        
        
        
                },
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Color(customColor("b47d2a"))),
                child: Text(
                  'SAVE',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
          ),
          SizedBox(height: 20,),
        
          Container(height: 170,width: 360,color: Colors.white,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,),
                  child: SizedBox(height: 150,width: 150,
                      child: Image(image: AssetImage("assets/images/girl.png"))),
                ),
                Text("Share this app to "
                    "\n your friends and fimily",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(height: 50,width: 170,
            child: ElevatedButton(
                onPressed: () {
        
        
        
                },
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Color(customColor("b47d2a"))),
                child: Text(
                  'SHARE APP',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
          ),
        
        
        ],),
      ),
    );
  }
}
