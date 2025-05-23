import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snackzilla/Cart/checkoutPage.dart';
import 'package:snackzilla/menu/menuPage.dart';

class myOrder extends StatefulWidget {
  @override
  State<myOrder> createState() => _myOrderState();
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

class _myOrderState extends State<myOrder> {
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
      name: "Cheese ramen bowl",
      description: "Cheese with egg noodles...",
      imageUrl: "assets/Images/fri.jpg",
      price: 45.00,
      rating: 4.7,
      ratingCount: 160,
      isVeg: true,
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
  ];

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
      body: SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              color: Colors.grey.shade100,
              margin: EdgeInsets.only(bottom: 20, left: 18, right: 18, top: 25),
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
                                        "+   1   -",
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
        height: 230,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Service",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontFamily: 'description',
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "\$ 0.00",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontFamily: 'description',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
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
                            MaterialPageRoute(
                              builder: (context) => checkoutPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Checkout",
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
    );
  }
}
