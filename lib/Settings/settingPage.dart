import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snackzilla/Cart/myOrder.dart';
import 'package:snackzilla/Settings/NotificationSetPage.dart';
import 'package:snackzilla/Home/homePage.dart';
import 'package:snackzilla/Profile/profilePage.dart';
import 'package:snackzilla/Settings/accountSetPage.dart';
import 'package:snackzilla/Settings/paymentSet.dart';
import 'package:snackzilla/menu/menuPage.dart';

class settingPage extends StatefulWidget{
  @override
  State<settingPage> createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      body:
      Padding(
        padding: const EdgeInsets.only(bottom: 12.0,left: 22.0,),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Settings",style: TextStyle(color: Colors.black,fontFamily: 'title', fontSize: 20),),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>profilePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Edit profile",style: TextStyle(color: Colors.black,fontFamily: 'pageHead', fontSize: 15),),
                      Text("Change your name, description and profile photo",style: TextStyle(color: Colors.black,fontFamily: 'description', fontSize: 12),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 20,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationSetPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Notification settings",style: TextStyle(color: Colors.black,fontFamily: 'pageHead', fontSize: 15),),
                      Text("Define what alerts and notifications you want to see",style: TextStyle(color: Colors.black,fontFamily: 'description', fontSize: 12),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 20,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>accountSetPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Account settings",style: TextStyle(color: Colors.black,fontFamily: 'pageHead', fontSize: 15),),
                      Text("Delete your account.",style: TextStyle(color: Colors.black,fontFamily: 'description', fontSize: 12),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 20,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>paymentSet()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Card details",style: TextStyle(color: Colors.black,fontFamily: 'pageHead', fontSize: 15),),
                      Text("Change your UPI, Credit card and debit card details.",style: TextStyle(color: Colors.black,fontFamily: 'description', fontSize: 12),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 20,
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Snackzilla",
                        style: TextStyle(fontSize: 25,fontFamily: 'title',
                            fontStyle: FontStyle.italic,color: Colors.grey.shade300),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      backgroundColor: Colors.white,
      bottomNavigationBar:
      Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey.shade300)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
            }, icon: Icon(Icons.home), color: Colors.grey),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>menuPage()));
            }, icon: Icon(Icons.restaurant_menu), color: Colors.grey),
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => myOrder()),
              );
            }, icon: Icon(Icons.shopping_cart), color: Colors.grey),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>profilePage()));
            }, icon: Icon(Icons.person), color: Colors.grey),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings), color: Colors.red.shade400),
          ],
        ),
      ),
    );
  }
}