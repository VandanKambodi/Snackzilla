import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class savedCardsPage extends StatefulWidget{
  @override
  State<savedCardsPage> createState() => _savedCardsPageState();
}

class _savedCardsPageState extends State<savedCardsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text("My Saved Cards",style: TextStyle(color: Colors.black,fontFamily: 'pageHead', fontSize: 16),),
      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.credit_card_off,size: 150,color: Colors.red.shade600,),
              SizedBox(height: 20,),
              Text("SORRY!",style: TextStyle(color: Colors.grey.shade600,fontFamily: 'description', fontSize: 18),),
              SizedBox(height: 8,),
              Text("You have no saved cards at the moment.",style: TextStyle(color: Colors.grey,fontFamily: 'pageHead', fontSize: 14),)
            ],
          ),
        ),
      ),

      backgroundColor: Colors.white,
    );
  }
}