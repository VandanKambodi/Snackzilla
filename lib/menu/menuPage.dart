import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snackzilla/Home/homePage.dart';
import 'package:snackzilla/Profile/profilePage.dart';
import 'package:snackzilla/Settings/settingPage.dart';

class menuPage extends StatefulWidget {
  @override
  State<menuPage> createState() => _menuPageState();
}

class FoodItem {
  final String name, description, imageUrl;
  final double price, rating;
  final int ratingCount;
  final bool isVeg;

  FoodItem({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.ratingCount,
    required this.isVeg,
  });
}

class _menuPageState extends State<menuPage> {
  final List<FoodItem> items = [
    FoodItem(
      name: "Classic Cheeseburger",
      description: "Enjoy our juicy beef patty...",
      imageUrl: "assets/Images/fri.jpg", // Replace with actual image URLs
      price: 35.00,
      rating: 4.5,
      ratingCount: 320,
      isVeg: false,
    ),
    FoodItem(
      name: "Cheese ramen bowl",
      description: "Cheese with egg noodles...",
      imageUrl: "assets/Images/fri.jpg",
      price: 45.00,
      rating: 4.7,
      ratingCount: 160,
      isVeg: true,
    ),
    FoodItem(
      name: "Classic Salad",
      description: "Cucumber and tomato with...",
      imageUrl: "assets/Images/fri.jpg",
      price: 25.00,
      rating: 4.4,
      ratingCount: 20,
      isVeg: true,
    ),
    FoodItem(
      name: "Salty french fries",
      description: "Classic rich potato with...",
      imageUrl: "assets/Images/fri.jpg",
      price: 25.00,
      rating: 4.5,
      ratingCount: 50,
      isVeg: true,
    ),
    FoodItem(
      name: "Classic pizza",
      description: "Regular pizza with...",
      imageUrl: "assets/Images/fri.jpg",
      price: 40.00,
      rating: 4.8,
      ratingCount: 60,
      isVeg: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.red.shade600,
          iconTheme: IconThemeData(color: Colors.white, size: 25),
          elevation: 0,
          flexibleSpace: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 28.0,
                    right: 0.0,
                    left: 35.0,
                    bottom: 10.0,
                  ),
                  child: SizedBox(
                    width: 350,
                    height: 50,
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
                ),
              ],
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              color: Colors.grey.shade100,
              margin: EdgeInsets.only(bottom: 0,left: 8,right: 8,top:20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                height: 145,
                child: Row(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .stretch, // Important for full height image
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                      child: Image.asset(
                        item.imageUrl,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    item.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      fontFamily: 'pageHead',
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.circle,
                                  size: 12,
                                  color: item.isVeg ? Colors.green : Colors.red,
                                ),
                              ],
                            ),

                            Text(
                              item.description,
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'description',
                                fontSize: 11,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),

                            SizedBox(height: 4),

                            Row(
                              children: [
                                Icon(Icons.star, size: 14, color: Colors.amber),
                                SizedBox(width: 4),
                                Text(
                                  "${item.rating} (${item.ratingCount})",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'description',
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Rating
                                Column(
                                  children: [
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.dollarSign,
                                          size: 16,
                                          color: Colors.black,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          "${item.price.toStringAsFixed(2)}",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'pageHead',
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                // Price and Add
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        minimumSize: Size(48, 24),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16,
                                          vertical: 4,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            24,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "+ Add",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'pageHead',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
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
              onPressed: () {},
              icon: Icon(Icons.restaurant_menu),
              color: Colors.red.shade400,
            ),
            IconButton(
              onPressed: () {},
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
