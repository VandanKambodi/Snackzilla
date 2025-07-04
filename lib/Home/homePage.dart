import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snackzilla/Cart/itemPage.dart';
import 'package:snackzilla/Cart/myOrder.dart';
import 'package:snackzilla/Profile/profilePage.dart';
import 'package:snackzilla/Settings/settingPage.dart';
import 'package:snackzilla/menu/menuPage.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<Map<String, dynamic>> burgers = [
    {
      'name': 'Fettuccine Pasta',
      'restaurant': 'Little Italy',
      'time': '25 Min',
      'calories': '100 Kcal',
      'price': '\$30.00',
      'rating': 4.4,
      'image': 'assets/Images/pa1.png',
    },
    {
      'name': 'Hawaiian Pizza',
      'restaurant': 'Pizza Hut',
      'time': '35 Min',
      'calories': '180 Kcal',
      'price': '\$40.00',
      'rating': 4.5,
      'image': 'assets/Images/p2.png',
    },
    {
      'name': 'Cheeseburger',
      'restaurant': "McDonald's",
      'time': '20 Min',
      'calories': '110 Kcal',
      'price': '\$20.00',
      'rating': 4.6,
      'image': 'assets/Images/b1.png',
    },
    {
      'name': 'French Fries',
      'restaurant': 'CCD',
      'time': '15 Min',
      'calories': '120 Kcal',
      'price': '\$15.00',
      'rating': 4.3,
      'image': 'assets/Images/f1.png',
    },
    {
      'name': 'Cheese Pizza',
      'restaurant': 'Ovenstory',
      'time': '30 Min',
      'calories': '180 Kcal',
      'price': '\$35.00',
      'rating': 4.4,
      'image': 'assets/Images/p1.png',
    },

    {
      'name': 'Samosas',
      'restaurant': 'Haldiram’s',
      'time': '15 Min',
      'calories': '70 Kcal',
      'price': '\$15.00',
      'rating': 4.3,
      'image': 'assets/Images/s1.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(123.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor:
              Colors
                  .transparent, // Make AppBar transparent to show your custom background
          elevation: 0,
          flexibleSpace: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red.shade400, Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 40.0,
                      bottom: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 6),
                            Text(
                              "10 ABC Society,",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'description',
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.notifications),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    right: 20.0,
                    left: 20.0,
                    bottom: 10.0,
                  ),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontFamily: 'description',
                      fontSize: 14,
                    ),
                    cursorHeight: 20,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                      prefixIconColor: Colors.grey.shade800,
                      suffixIconColor: Colors.grey.shade800,
                      fillColor: Colors.grey.shade100,
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.keyboard_voice_sharp),
                      hintText: "Search..",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade800,
                        fontFamily: 'description',
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  bottom: 0.0,
                  left: 5.0,
                  right: 5.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red.shade400,
                  ),
                  height: 170,
                  width: 390,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "25% ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: 'pageHead',
                                  ),
                                ),
                                Text(
                                  "OFF",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: 'description',
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "IPL Special deal",
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'pageHead',
                              ),
                            ),
                            Text(
                              "Free Delivery",
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 10,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'pageHead',
                              ),
                            ),
                            SizedBox(height: 1),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => menuPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Order now",
                                style: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontFamily: 'description',
                                  fontSize: 12,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red.shade200,
                                foregroundColor: Colors.white,
                                minimumSize: Size(30, 35),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/Images/b_main.png',
                        height: 300,
                        width: 209,
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                child: Text.rich(
                  TextSpan(
                    text: ".",
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                    children: [
                      TextSpan(
                        text: ".",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                        children: [
                          TextSpan(
                            text: ".",
                            style: TextStyle(fontSize: 25, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                width: 390,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Picks",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'pageHead',
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => menuPage()),
                        );
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          color: Colors.red.shade400,
                          fontFamily: 'pageHead',
                          fontSize: 12,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 305,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  itemCount: burgers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: BurgerCard(burgers[index]),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 390,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recommended",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'pageHead',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                height: 305,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  itemCount: burgers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: BurgerCard(burgers[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

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
              onPressed: () {},
              icon: Icon(Icons.home),
              color: Colors.red.shade400,
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profilePage()),
                );
              },
              icon: Icon(Icons.person),
              color: Colors.grey,
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

class BurgerCard extends StatelessWidget {
  final Map<String, dynamic> burger;

  const BurgerCard(this.burger);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        color: Colors.grey.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      burger['image'],
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red.shade600,
                    radius: 14,
                    child: Text(
                      burger['rating'].toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                burger['name'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'pageHead',
                ),
              ),
              Text(
                burger['restaurant'],
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'description',
                  fontSize: 10,
                ),
              ),

              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.watch_later_rounded, size: 14),
                  SizedBox(width: 2),
                  Text(
                    burger['time'],
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'description',
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.local_fire_department, size: 16),
                  SizedBox(width: 2),
                  Text(
                    burger['calories'],
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'description',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      burger['price'],
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'pageHead',
                        fontSize: 14,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => itemPage()),
                        );
                      },
                      icon: Icon(
                        Icons.add_circle,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
