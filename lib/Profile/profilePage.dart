import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snackzilla/Cart/myOrder.dart';
import 'package:snackzilla/LoginSignup/LoginPage.dart';
import 'package:snackzilla/Home/homePage.dart';
import 'package:snackzilla/Profile/addressPage.dart';
import 'package:snackzilla/Profile/savedCardsPage.dart';
import 'package:snackzilla/Profile/walletPage.dart';
import 'package:snackzilla/Settings/settingPage.dart';
import 'package:snackzilla/menu/menuPage.dart';

class profilePage extends StatefulWidget {
  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12.0, left: 22.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Profile",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'title',
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      "Vandan Kambodi",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'description',
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(Icons.edit),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0.0,
                    vertical: 0.0,
                  ),
                  child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 0.5,
                    indent: 0,
                    endIndent: 20,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text(
                    "9601234567",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'description',
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0.0,
                    vertical: 0.0,
                  ),
                  child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 0.5,
                    indent: 0,
                    endIndent: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ListTile(
                    leading: Icon(Icons.mail),
                    title: Text(
                      "vandan@gmail.com",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'description',
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(Icons.edit),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0.0,
                    vertical: 0.0,
                  ),
                  child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 0.5,
                    indent: 0,
                    endIndent: 20,
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => savedCardsPage()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.card_giftcard_sharp),
                    title: Text(
                      "My Saved Cards",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'description',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => walletPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ListTile(
                      leading: Icon(Icons.account_balance_wallet_outlined),
                      title: Text(
                        "Snackzilla's Wallet",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'description',
                          fontSize: 15,
                        ),
                      ),
                      trailing: Container(
                        width: 70,
                        height: 20,
                        decoration: BoxDecoration(color: Colors.red.shade400),
                        child: Text(
                          "  0 Coins",
                          style: TextStyle(
                            backgroundColor: Colors.red.shade400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => addressPage()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.home_work_outlined),
                    title: Text(
                      "My Addresses",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'description',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => myOrder()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.delivery_dining_outlined),
                    title: Text(
                      "My Orders",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'description',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.contact_page_outlined),
                  title: Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'description',
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.policy_outlined),
                  title: Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'description',
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text(
                    "Need Help? Chat with Us!",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'description',
                      fontSize: 15,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.logout_outlined),
                    title: Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'description',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0.0,
                    vertical: 0.0,
                  ),
                  child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 0.5,
                    indent: 0,
                    endIndent: 20,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Snackzilla",
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'title',
                            fontStyle: FontStyle.italic,
                            color: Colors.grey.shade300,
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
      ),

      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey.shade300)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homePage()),
                );
              },
              icon: Icon(Icons.home),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => menuPage()),
                );
              },
              icon: Icon(Icons.restaurant_menu),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => myOrder()),
                );
              },
              icon: Icon(Icons.shopping_cart),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
              color: Colors.red.shade400,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => settingPage()),
                );
              },
              icon: Icon(Icons.settings),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
