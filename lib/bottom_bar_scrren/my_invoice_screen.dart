import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wx_divider/wx_divider.dart';
import '../all_screen/admin_awaited_page.dart';
import 'my_profile_screen.dart';

class my_invoice extends StatefulWidget {
  const my_invoice({super.key});

  @override
  State<my_invoice> createState() => _my_invoiceState();
}

class _my_invoiceState extends State<my_invoice> {
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
      body: Column(children: [
        Container(
            height: 50,
            width: 380,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 8),
              child: Text(
                "My Invoice",
                style: TextStyle(
                    fontSize: 23, color: Color(customColor("b47d2a"))),
              ),
            )),
        SizedBox(height: 10,),
        Container(height: 630,width: 352,color: Colors.white,
          child: Column(
            children: [
              Text("TAX INVOICE",style: TextStyle(fontSize: 22,color: Colors.grey,fontWeight: FontWeight.w600),),
              WxDivider(
                direction: Axis.horizontal,
                pattern: WxDivider.dashed,
                color: Colors.black,
                thickness: 1.0,
                lines: 1,
                spacing: 5.0,

              ),
              Text("Vakpati Jewellers",style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w500),),
              SizedBox(height: 5,),
              Text("Agrasen Square, 10-A,Sapan Sangeeta Rd,Snehanagar \n           "
                  "       Indore,Madhya Pradesh 452002",style: TextStyle(color: Colors.grey,fontSize: 12),),
              WxDivider(
                direction: Axis.horizontal,
                pattern: WxDivider.dashed,
                color: Colors.black,
                thickness: 1.0,
                lines: 1,
                spacing: 3.0,
              ),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Text("Invoice No.",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Text("Vp - 1256",style: TextStyle(fontWeight: FontWeight.w500),))])),
              SizedBox(height: 5,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 180),
                      child: Text("Payment Method",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Text("Paytm",style: TextStyle(fontWeight: FontWeight.w500),))])),
              SizedBox(height: 5,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 180),
                      child: Text("Order Date",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Text("25 May 2019",style: TextStyle(fontWeight: FontWeight.w500),))])),
              WxDivider(
                direction: Axis.horizontal,
                pattern: WxDivider.dashed,
                color: Colors.black,
                thickness: 1.0,
                lines: 1,
                spacing: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text("Billing Address",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
              ),
              Text("96 - FB ,Mahadev Totla Nagar,Nr.Pipliyahana Square \n Indore India Mp.452016",style: TextStyle(color: Colors.grey),),
              SizedBox(height: 5,),
              WxDivider(
                direction: Axis.horizontal,
                pattern: WxDivider.dashed,
                color: Colors.black,
                thickness: 1.0,
                lines: 1,
                spacing: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text("Shipping Address",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
              ),
              Text("96 - FB ,Mahadev Totla Nagar,Nr.Pipliyahana Square \n Indore India Mp.452016",style: TextStyle(color: Colors.grey),),
              SizedBox(height: 5,),
              WxDivider(
                direction: Axis.horizontal,
                pattern: WxDivider.dashed,
                color: Colors.black,
                thickness: 1.0,
                lines: 1,
                spacing: 3.0,
              ),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 170),
                      child: Text("Items",style: TextStyle(fontWeight: FontWeight.w500),),
                    )), WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Text("Qty",style: TextStyle(fontWeight: FontWeight.w500),),
                    )),
                    WidgetSpan(child: Text("Amount",style: TextStyle(fontWeight: FontWeight.w500),)),
                  ])),
             Divider(thickness: 2,color: Colors.black,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Text("Gold Ring",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                    )), WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 65),
                      child: Text("1",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                    )),
                    WidgetSpan(child: Text("14000.00",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),)),
                  ])),
              Divider(thickness: 2,),
              RichText(
                  text: TextSpan(text: "", children: [
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Text("Gold Ring",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                    )), WidgetSpan(child: Padding(
                      padding: const EdgeInsets.only(right: 65),
                      child: Text("1",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                    )),
                    WidgetSpan(child: Text("14000.00",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),)),
                  ])),
              Divider(thickness: 2,),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: RichText(
                    text: TextSpan(text: "", children: [
                      WidgetSpan(child: Text("item Total",style: TextStyle(fontWeight: FontWeight.w500),)), WidgetSpan(child: Padding(
                        padding: const EdgeInsets.only(left: 60), child: Text("29000.00",style: TextStyle(fontWeight: FontWeight.w500),),))])),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: RichText(
                    text: TextSpan(text: "", children: [
                      WidgetSpan(child: Text("CGST(1.5%)",style: TextStyle(fontWeight: FontWeight.w500),)), WidgetSpan(child: Padding(
                        padding: const EdgeInsets.only(left: 80,), child: Text("435.00",style: TextStyle(fontWeight: FontWeight.w500),),))])),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: RichText(
                    text: TextSpan(text: "", children: [
                      WidgetSpan(child: Text("SGST(1.5%)",style: TextStyle(fontWeight: FontWeight.w500),)), WidgetSpan(child: Padding(
                        padding: const EdgeInsets.only(left: 80), child: Text("435.00",style: TextStyle(fontWeight: FontWeight.w500),),))])),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 140),
                child: RichText(
                    text: TextSpan(text: "", children: [
                      WidgetSpan(child: Text("Discount",style: TextStyle(fontWeight: FontWeight.w500),)), WidgetSpan(child: Padding(
                        padding: const EdgeInsets.only(left: 80), child: Text("1000.00",style: TextStyle(fontWeight: FontWeight.w500),),))])),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 140),
                child: RichText(
                    text: TextSpan(text: "", children: [
                      WidgetSpan(child: Text("Grand Total",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),)), WidgetSpan(child: Padding(
                        padding: const EdgeInsets.only(left: 30), child: Text("28870.00",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),))])),
              ),
              WxDivider(
                direction: Axis.horizontal,
                pattern: WxDivider.dashed,
                color: Colors.black,
                thickness: 1.0,
                lines: 1,
                spacing: 3.0,
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: RichText(
                    text: TextSpan(text: "", children: [
                      WidgetSpan(child: Text("Company GST : AFAPG5544F",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)),
                      WidgetSpan(child: Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Text("*Terms & Condition Apply",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
                      ))])),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  myprofile(),
                  ));


            },
            style: ElevatedButton.styleFrom(
                textStyle: TextStyle(),
                backgroundColor: Color(customColor("b47d2a"))),
            child: Text(
              'SHARE INVOICE',
              style: TextStyle(fontSize: 15, color: Colors.white),
            )),

      ],),

    );
  }
}
