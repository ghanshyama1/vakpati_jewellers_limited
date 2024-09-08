import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../bottom_bar_scrren/bottom_bar_screen.dart';



class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {


    final List<String> imageAssets = [
      'assets/images/ring1.jpg',
      'assets/images/earring.jpg',


    ];



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


      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 10,),
          ImageSlideshow(

          /// Width of the [ImageSlideshow].
          width: double.infinity,


          height: 200,


          initialPage: 0,

          /// The color to paint the indicator.
          indicatorColor: Colors.blue,


          indicatorBackgroundColor: Colors.grey,


          children: [
            Image.asset('assets/images/j1.png', fit: BoxFit.cover,
            ),
            Image.asset('assets/images/j5.jpg', fit: BoxFit.cover,
            ),
            Image.asset('assets/images/j9.jpg', fit: BoxFit.cover,
            ),
            Image.asset('assets/images/j12.jpg', fit: BoxFit.cover,
            ),


          ],
            autoPlayInterval: 3000,

            /// Loops back to first slide.
            isLoop: true,
          ),

          Padding(
            padding: const EdgeInsets.only(right: 130,top: 10),
            child: Text("Jewellery for Women",style: TextStyle(fontSize: 22,color: Color(customColor("b47d2a"))),),
          ),
         SizedBox(height: 10,),

          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: imageAssets.length,
            // Use the length of the image list
            itemBuilder: (context, index) {
              return 
                InkWell(onTap: 
                  () => Navigator.push(context,MaterialPageRoute(builder: (context) =>  bottombar(),)),
                  child: Card(color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      image: DecorationImage(
                        image: AssetImage(imageAssets[index]),
                        // Display the image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                                ),
                );
            },
          ),
          SizedBox(height: 10,),



        ]),
      ));
  }
}

int customColor(String colorCode) {
  String colors = "0xff" + colorCode;
  colors = colors.replaceAll("#", "");
  return int.parse(colors);
}
