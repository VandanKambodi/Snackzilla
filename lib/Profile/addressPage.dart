
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addressPage extends StatefulWidget{
  @override
  State<addressPage> createState() => _addressPageState();
}

class _addressPageState extends State<addressPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text("My Addresses",style: TextStyle(color: Colors.black,fontFamily: 'pageHead', fontSize: 16),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("SAVED ADDRESSES",style: TextStyle(color: Colors.grey.shade500,fontFamily: 'pageHead',fontSize: 18),),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.all(14),
              height: 140,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Icon(Icons.home_outlined,color: Colors.grey,size: 35,),
                      Text("0 m",style: TextStyle(color: Colors.grey.shade600,fontFamily: 'pageHead',fontSize: 14),),
                    ],
                  ),
                  SizedBox(width: 12,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Home",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 15),),
                      SizedBox(height: 2,),
                      Text("10 ABC Society, Gujarat, India",style: TextStyle(color: Colors.grey.shade700,fontFamily: 'pageHead',fontSize: 13),),
                      SizedBox(height: 2,),
                      Text("Phone number: +91-9601234567",style: TextStyle(color: Colors.grey.shade600,fontFamily: 'pageHead',fontSize: 11),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.edit,color: Colors.red.shade600,size: 25,),
                          SizedBox(width: 20,),
                          Icon(Icons.delete,color: Colors.red.shade600,size: 25,),
                          SizedBox(width: 20,),
                          Icon(Icons.share_outlined,color: Colors.red.shade600,size: 25,),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              child: Divider(
                color: Colors.grey.shade400,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16)
              ),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextButton(onPressed: (){}, child: Icon(Icons.add,color: Colors.red.shade600,size: 30,),
                      style: TextButton.styleFrom(foregroundColor: Colors.grey.shade200),
                      ),
                      Text("Add Address",style: TextStyle(color: Colors.red.shade600,fontFamily: 'pageHead',fontSize: 15),),
                    ],
                  ),
                  TextButton(onPressed: (){}, child: Icon(Icons.chevron_right,color: Colors.grey,size: 30,),
                    style: TextButton.styleFrom(foregroundColor: Colors.grey.shade200),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      backgroundColor: Colors.white,
    );
  }
}