import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../all_screen/admin_awaited_page.dart';
import 'order_history2.dart';

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  String raju ="";
  String pickup ="";
  final scaffoldkey = GlobalKey<ScaffoldState>();

  String dropdownvalue = 'Shipping and Billing address';

  var countries = [
    'Shipping and Billing address',
    '96 - FB ,Mahadev Totla Nagar,',
  ];
  String paymentdropdown = 'Payment Option';

  var option = [
    'Payment Option',
    "Full Payment",
    "Online Payment",
    "Cash Pay To Dealer",

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
      body: Column(children: [
        Container(
            height: 50,
            width: 380,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 8),
              child: Text(
                "Checkout",
                style: TextStyle(
                    fontSize: 23, color: Color(customColor("b47d2a"))),
              ),
            )),
        SizedBox(height: 15,),

        Container(height: 160,width: 360,color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text("Order Summary",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(customColor("b47d2a"))),),
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
                      padding: const EdgeInsets.only(right: 260),
                      child: Text("Total Items",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Text("2",style: TextStyle(fontWeight: FontWeight.w500),))])),
              SizedBox(height: 5,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: Text("Discount",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Text("1000.00",style: TextStyle(fontWeight: FontWeight.w500),))])),
              SizedBox(height: 5,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 180),
                      child: Text("Advance Deposit",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Text("5000.00",style: TextStyle(fontWeight: FontWeight.w500),))])),
              SizedBox(height: 5,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 180),
                      child: Text("Amount Payble",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Text("28870.00",style: TextStyle(fontWeight: FontWeight.w500),))])),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Radio(value: "Billing address same as shipping address", groupValue: raju , onChanged:(value){
              setState(() {
                raju =value.toString();
              });
            } ),
            Text("Billing address same as shipping address")
          ],
        ),
        Row(
          children: [
            Radio(value: "Add new shipping address", groupValue: raju, onChanged: (value){
              setState(() {
                raju =value.toString();
              });
            }),
            Text("Add new shipping address")
          ],
        ),
        SizedBox(height: 10,),

        Container(height: 50,width: 350,color: Colors.white,
          child: DropdownButton(underline: DropdownButtonHideUnderline(child: Text("")),
            iconSize: 30,
            value: dropdownvalue,
            icon: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Icon(Icons.keyboard_arrow_down),
            ),
            items: countries.map((String item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ),
        SizedBox(height: 10,),

        Container(height: 50,width: 350,color: Colors.white,
          child: DropdownButton(underline: DropdownButtonHideUnderline(child: Text("")),
            iconSize: 30,
            value: paymentdropdown,
            icon: Padding(
              padding: const EdgeInsets.only(left: 175),
              child: Icon(Icons.keyboard_arrow_down),
            ),
            items: option.map((String item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                paymentdropdown = newValue!;
              });
            },
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Radio(value: "Self Pickup", groupValue: pickup , onChanged:(value){
              setState(() {
                pickup  =value.toString();
              });
            } ),
            Text("Self Pickup"),
            SizedBox(width: 40,),
            Radio(value: "By Courier", groupValue: pickup , onChanged:(value){
              setState(() {
                pickup  =value.toString();
              });
            } ),
            Text("By Courier"),
          ],
        ),
        SizedBox(height: 10,),
        Text("Select Payment Options",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        SizedBox(height: 10,),
        Image(image: AssetImage("assets/images/paytm.png")),
        SizedBox(height: 20,),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => orderhistory2(),));



            },
            style: ElevatedButton.styleFrom(
                textStyle: TextStyle(),
                backgroundColor: Color(customColor("b47d2a"))),
            child: Text(
              'PROCEED TO PAY',
              style: TextStyle(fontSize: 15, color: Colors.white),
            )),

      ],),
    );
  }
}
