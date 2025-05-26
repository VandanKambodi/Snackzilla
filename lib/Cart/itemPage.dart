import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snackzilla/Cart/myOrder.dart';

class itemPage extends StatefulWidget {
  @override
  State<itemPage> createState() => _itemPageState();
}

class _itemPageState extends State<itemPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red.shade600, Colors.white, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Image.asset(
                        'assets/Images/s1.png',
                        height: 500,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: .0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      border: const Border(
                        top: BorderSide(color: Colors.red, width: 4.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Samosas',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'pageHead',
                                        fontSize: 22,
                                      ),
                                    ),
                                    const Text(
                                      ' Haldiram’s',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'pageHead',
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        if (quantity > 1) {
                                          setState(() {
                                            quantity--;
                                          });
                                        }
                                      },
                                      icon: const Icon(
                                        Icons.remove_circle_outline,
                                      ),
                                    ),
                                    Text(
                                      '$quantity',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'description',
                                        fontSize: 14,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          quantity++;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add_circle,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            SizedBox(width: 4),
                            Text(
                              '4.3',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'description',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 12),
                            Icon(
                              Icons.watch_later_rounded,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '15-20 min',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'description',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 12),
                            Icon(
                              Icons.local_fire_department,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '70kcal',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'description',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 12),
                            Icon(
                              Icons.directions_walk,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '1.2km',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'description',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),

                        const Text(
                          'Crispy, golden pastry triangles filled with spiced potatoes & peas. A perfect savory snack!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'pageHead',
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 18),
                        Text(
                          'Customize >',
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'description',
                            fontSize: 8,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Total Amount',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'description',
                                    fontSize: 12,
                                  ),
                                ),
                                const Text(
                                  '\$ 15.00',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'pageHead',
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => myOrder(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.red.shade600,
                                backgroundColor: Colors.red.shade600,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 12,
                                ),
                              ),
                              child: const Text(
                                'Add To Cart',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'pageHead',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
