import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vakpati_jewellers_limited/bottom_bar_scrren/sorting_screen.dart';

import '../home_all_screen/home_screen.dart';
import 'addto_cart_screen.dart';
import 'explorescreen.dart';
import 'filter_screen.dart';
import 'home_screen.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int data =0;
  List screenlist=[
    const home_screen(),
    const explorescreen(),
    const filterscreen(),
    const sortingscreen(),
    const addtocartscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,

        onTap: (index) {
          if (index < screenlist.length) {
            setState(() {
              data = index;
            });
          }
        },
        currentIndex: data,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,)
              ,label: ""
          ),

          BottomNavigationBarItem(icon: Icon(Icons.explore,)
              ,label: ""
          ),



          BottomNavigationBarItem(icon: Icon(Icons.filter_alt_outlined,)
              ,label: ""
          ),

          BottomNavigationBarItem(icon: Icon(Icons.sort_rounded,)
              ,label: ""
          ),

          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,)
              ,label: ""
          ),
        ],

      ),
      body: screenlist[data],
    );

  }
}

int customColor(String colorCode) {
  String colors = "0xff" + colorCode;
  colors = colors.replaceAll("#", "");
  return int.parse(colors);
}
