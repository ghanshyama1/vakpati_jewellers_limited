import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../all_screen/admin_awaited_page.dart';

class explorescreen extends StatefulWidget {
  const explorescreen({super.key});

  @override
  State<explorescreen> createState() => _explorescreenState();
}

class _explorescreenState extends State<explorescreen> {
  final  List<String> allimage = [
        "assets/images/hand.png",
        "assets/images/hand2.png",
        "assets/images/hand3.png",
        "assets/images/hand4.png",
        "assets/images/hand5.png",
        "assets/images/hand.png",

  ];

  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          if(scaffoldkey.currentState!.isDrawerOpen){
            scaffoldkey.currentState!.closeDrawer();
            //close drawer, if drawer is open
          }else{
            scaffoldkey.currentState!.openDrawer();
            //open drawer, if drawer is closed
          }
        }, icon: Icon(Icons.menu,size: 35,color: Colors.white,)),


        backgroundColor: Color(customColor("b47d2a")),
        automaticallyImplyLeading: false,
        title: SizedBox(
            height: 40,
            width: 150,
            child: Image(image: AssetImage("assets/images/home.png"))),
        actions: [

          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,size: 35,))

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
          
        Padding(
          padding: const EdgeInsets.only(right: 120,top: 10),
          child: Text("Exclusive Gold Rings",style: TextStyle(fontSize: 23,color: Color(customColor("b47d2a"))),),
        ),
        SizedBox(height: 10,),

        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 25,
          ),
          itemCount: allimage.length,
          // Use the length of the image list
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
              },
              child: Card(
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero,
                    image: DecorationImage(
                      image: AssetImage(allimage[index]),
                    ),
                  ),
                ),
              ),
            );
          },
        )





      ],),
    backgroundColor: Colors.white,
    );
  }
}
int customColor(String colorCode) {
  String colors = "0xff" + colorCode;
  colors = colors.replaceAll("#", "");
  return int.parse(colors);
}
