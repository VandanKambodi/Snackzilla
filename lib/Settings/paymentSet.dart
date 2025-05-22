
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class paymentSet extends StatefulWidget{
  @override
  State<paymentSet> createState() => _paymentSetState();
}

class _paymentSetState extends State<paymentSet> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text("Payment settings",style: TextStyle(color: Colors.black,fontFamily: 'pageHead', fontSize: 16),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("CARDS",style: TextStyle(color: Colors.grey.shade500,fontFamily: 'pageHead',fontSize: 18),),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 60,
              child: ListTile(
                leading: Icon(FontAwesomeIcons.creditCard,color: Colors.grey,size: 25,),
                title: Text("Add credit or debit cards",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 14),),
                trailing: Text("ADD",style: TextStyle(color: Colors.red.shade400,fontFamily: 'description',fontSize: 12),),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("PAY BY ANY UPI APP",style: TextStyle(color: Colors.grey.shade500,fontFamily: 'pageHead',fontSize: 18),),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.googlePay,color: Colors.grey,size: 25,),
                    title: Text("Google Pay UPI",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 14),),
                  ),
                  Divider(
                      color: Colors.grey.shade400,
                      thickness: 0.5,
                      indent: 0,
                      endIndent: 0,
                    ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.paypal,color: Colors.grey,size: 25,),
                    title: Text("PayPal UPI",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 14),),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("WALLETS",style: TextStyle(color: Colors.grey.shade500,fontFamily: 'pageHead',fontSize: 18),),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(FontAwesomeIcons.amazonPay,color: Colors.grey,size: 25,),
                    title: Text("Amazon Pay Balance",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 14),),
                    subtitle: Text("Link your Amazon Pay",style: TextStyle(color: Colors.grey.shade600,fontFamily: 'pageHead',fontSize: 10),),
                    trailing: Text("LINK",style: TextStyle(color: Colors.red.shade400,fontFamily: 'description',fontSize: 12),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("NETBANKING",style: TextStyle(color: Colors.grey.shade500,fontFamily: 'pageHead',fontSize: 18),),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 60,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.food_bank,color: Colors.grey,size: 25,),
                    title: Text("Netbanking",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 14),),
                    trailing: Text("ADD",style: TextStyle(color: Colors.red.shade400,fontFamily: 'description',fontSize: 12),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("CASH",style: TextStyle(color: Colors.grey.shade500,fontFamily: 'pageHead',fontSize: 18),),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.payments_outlined,color: Colors.grey,size: 25,),
                    title: Text("Pay on delivery",style: TextStyle(color: Colors.black,fontFamily: 'pageHead',fontSize: 14),),
                    subtitle: Text("If online payment fails",style: TextStyle(color: Colors.grey.shade600,fontFamily: 'pageHead',fontSize: 10),),
                    trailing: Text("ENABLE",style: TextStyle(color: Colors.red.shade400,fontFamily: 'description',fontSize: 12),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),

      backgroundColor: Colors.white,
    );
  }
}