import 'package:flutter/material.dart';
import 'package:snackzilla/Home/homePage.dart';

class orderSucc extends StatefulWidget {
  @override
  State<orderSucc> createState() => _orderSuccState();
}

class _orderSuccState extends State<orderSucc> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black, size: 25),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red.shade600, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 33.0,
                right: 0.0,
                left: 55.0,
                bottom: 10.0,
              ),
              child: Container(
                child: Text(
                  "",
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontFamily: 'title',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.check_circle, color: Colors.green, size: 120.0),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Order Placed!",
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'pageHead',
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "THANK YOU FOR YOUR ORDER",
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontFamily: 'pageHead',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your order has been successfully placed.",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontFamily: 'pageHead',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Order No: ON000123",
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontFamily: 'description',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Total Amount: \$35.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'pageHead',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Online",
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'pageHead',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                left: 8.0,
                bottom: 8.0,
                top: 0.0,
              ),
              child: Divider(
                color: Colors.grey.shade400,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homePage()),
                );
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.red.shade600),
                height: 50,
                width: 350,
                child: Center(
                  child: Text(
                    "HOME",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'pageHead',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
