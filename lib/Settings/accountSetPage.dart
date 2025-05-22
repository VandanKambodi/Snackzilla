
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snackzilla/Home/homePage.dart';
import 'package:snackzilla/Profile/profilePage.dart';
import 'package:snackzilla/Settings/settingPage.dart';

class accountSetPage extends StatefulWidget{
  @override
  State<accountSetPage> createState() => _accountSetPageState();
}

class _accountSetPageState extends State<accountSetPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text("Account settings",style: TextStyle(color: Colors.black,fontFamily: 'pageHead', fontSize: 16),),
      ),

      body:
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              children: [
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
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text("Change email",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 14),),
                    ],
                  ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text("Delete account",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 14),),
                    ],
                  ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
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