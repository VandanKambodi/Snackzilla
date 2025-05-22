
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snackzilla/homePage.dart';
import 'package:snackzilla/profilePage.dart';
import 'package:snackzilla/settingPage.dart';

class NotificationSetPage extends StatefulWidget{
  @override
  State<NotificationSetPage> createState() => _NotificationSetPageState();
}

class _NotificationSetPageState extends State<NotificationSetPage> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    bool istSwitched = true;
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text("Notification Preferences",style: TextStyle(color: Colors.black,fontFamily: 'pageHead', fontSize: 16),),
      ),

      body:

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 18,top: 15),
              child: Container(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Enable all",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 18),),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                },
                                activeColor: Colors.red.shade400,
                                activeTrackColor: Colors.red.shade100,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.grey,

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text("Activate all notification",style: TextStyle(color: Colors.black,fontFamily: 'description',fontSize: 14),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 0.5,
                        indent: 0,
                        endIndent: 20,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Promos and offers",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 18),),
                        SizedBox(height: 6,),
                        Text("Receive updates about coupons, promotions and money-saving offers",style: TextStyle(color: Colors.black,fontFamily: 'description',fontSize: 14),),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.snapchat,size: 15,color: Colors.grey,),
                                  SizedBox(width: 20,),
                                  Text("Push",style: TextStyle(color: Colors.black,fontFamily: 'description',fontSize: 16),),
                                ],
                              ),
                              Switch(
                                value: istSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    istSwitched = value;
                                  });
                                },
                                activeColor: Colors.red.shade400,
                                activeTrackColor: Colors.red.shade100,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.grey,

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.whatsapp,size: 15,color: Colors.green,),
                                  SizedBox(width: 20,),
                                  Text("WhatsApp",style: TextStyle(color: Colors.black,fontFamily: 'description',fontSize: 16),),
                                ],
                              ),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                },
                                activeColor: Colors.red.shade400,
                                activeTrackColor: Colors.red.shade100,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.grey,

                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 0.5,
                        indent: 0,
                        endIndent: 20,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Social notifications",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 18),),
                        SizedBox(height: 6,),
                        Text("Get notified when someone follows your profile, or when you get likes and comments on "
                            "reviews and photos posted by you"
                          ,style: TextStyle(color: Colors.black,fontFamily: 'description',fontSize: 14),),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.snapchat,size: 15,color: Colors.grey,),
                                  SizedBox(width: 20,),
                                  Text("Push",style: TextStyle(color: Colors.black,fontFamily: 'description',fontSize: 16),),
                                ],
                              ),
                              Switch(
                                value: istSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    istSwitched = value;
                                  });
                                },
                                activeColor: Colors.red.shade400,
                                activeTrackColor: Colors.red.shade100,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.grey,

                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 0.5,
                        indent: 0,
                        endIndent: 20,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Orders and purchases",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 18),),
                        SizedBox(height: 6,),
                        Text("Receive updates related to your order status, memberships, table bookings and more"
                          ,style: TextStyle(color: Colors.black,fontFamily: 'description',fontSize: 14),),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.snapchat,size: 15,color: Colors.grey,),
                                  SizedBox(width: 20,),
                                  Text("Push",style: TextStyle(color: Colors.black,fontFamily: 'description',fontSize: 16),),
                                ],
                              ),
                              Switch(
                                value: istSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    istSwitched = value;
                                  });
                                },
                                activeColor: Colors.red.shade400,
                                activeTrackColor: Colors.red.shade100,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.grey,

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.whatsapp,size: 15,color: Colors.green,),
                                  SizedBox(width: 20,),
                                  Text("WhatsApp",style: TextStyle(color: Colors.black,fontFamily: 'description',fontSize: 16),),
                                ],
                              ),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                },
                                activeColor: Colors.red.shade400,
                                activeTrackColor: Colors.red.shade100,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Colors.grey,

                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 0.5,
                        indent: 0,
                        endIndent: 20,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
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
                    SizedBox(height: 150,),
                  ],
                ),

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
            IconButton(onPressed: (){}, icon: Icon(Icons.restaurant_menu), color: Colors.grey),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart), color: Colors.grey),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>profilePage()));
            }, icon: Icon(Icons.person), color: Colors.grey),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>settingPage()));
            }, icon: Icon(Icons.settings), color: Colors.red.shade400),
          ],
        ),
      ),
    );
  }
}