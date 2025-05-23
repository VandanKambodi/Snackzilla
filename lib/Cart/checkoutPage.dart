import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snackzilla/Home/homePage.dart';

class checkoutPage extends StatefulWidget {
  @override
  State<checkoutPage> createState() => _checkoutPageState();
}

class _checkoutPageState extends State<checkoutPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: AppBar(
          automaticallyImplyLeading: true,
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
                  "My Order",
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
      body: Container(),
      bottomNavigationBar: Container(
        height: 800,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  indent: 0,
                  endIndent: 0,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  "Order confirmation",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontFamily: 'pageHead',
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.googlePay,
                        size: 45,
                        color: Colors.grey,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "UPI Payment",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: 'description',
                            fontSize: 10,
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "abc1**@okicici",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontFamily: 'description',
                            fontSize: 8,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.circle),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade800,
                  ),
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.ccVisa,
                        color: Colors.blue,
                        size: 45,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Debit card",
                          style: TextStyle(
                            color: Colors.grey.shade300,
                            fontFamily: 'description',
                            fontSize: 10,
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "1233*** * * ***890",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontFamily: 'description',
                            fontSize: 8,
                          ),
                        ),
                      ),
                      trailing: Icon(
                        Icons.circle_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.ccAmazonPay,
                        size: 45,
                        color: Colors.grey,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Gift card",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: 'description',
                            fontSize: 10,
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "4533*** * a ***8905",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontFamily: 'description',
                            fontSize: 8,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.circle_outlined),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 38),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  "Delivery address",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontFamily: 'pageHead',
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(FontAwesomeIcons.locationPin),
                      title: Text(
                        "10 ABC Society",
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontFamily: 'description',
                          fontSize: 12,
                        ),
                      ),
                      subtitle: Text(
                        "Block 3 House 9",
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontFamily: 'description',
                          fontSize: 10,
                        ),
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Estimated delivery time",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontFamily: 'description',
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "10-15 Min",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontFamily: 'description',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: 'description',
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "\$ 35.00",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: 'pageHead',
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 170,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homePage()),
                          );
                        },
                        child: Text(
                          "Place order",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'pageHead',
                            fontSize: 14,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.red.shade600,
                          backgroundColor: Colors.red.shade600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
