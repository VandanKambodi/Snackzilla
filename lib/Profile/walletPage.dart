import 'package:flutter/material.dart';

class walletPage extends StatefulWidget{
  @override
  State<walletPage> createState() => _walletPageState();
}

class _walletPageState extends State<walletPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          elevation: 0,
          backgroundColor: Colors.white,
          titleSpacing: 0,
          title: Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Snackzilla's Wallet",style: TextStyle(color: Colors.black,fontFamily: 'pageHead', fontSize: 16),),
                Text("FAQs",style: TextStyle(color: Colors.red.shade600,fontFamily: 'pageHead', fontSize: 15),)
              ],
            ),
          ),
        ),

      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: Colors.red.shade600,
              borderRadius: BorderRadius.circular(16),
            ),
            width: 390,
            height: 100,
            child:
            Padding(
              padding: const EdgeInsets.only(top: 8.0,right: 8.0,bottom: 8.0,left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\$0.00",style: TextStyle(color: Colors.white,fontFamily: 'pageHead', fontSize: 20),),
                  Text("available balance",style: TextStyle(color: Colors.white,fontFamily: 'pageHead', fontSize: 14),),
                ],
              ),
            ),
          ),
          SizedBox(height: 120,),
          Container(
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 80,
                    width: 260,
                    child: Row(
                      children: [
                        SizedBox(width: 12,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              height: 10,
                              width: 120,
                            ),
                            SizedBox(height: 12,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              height: 10,
                              width: 80,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Card(
                  elevation: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 80,
                    width: 260,
                    child: Row(
                      children: [
                        SizedBox(width: 12,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade300,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              height: 10,
                              width: 120,
                            ),
                            SizedBox(height: 12,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              height: 10,
                              width: 80,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Card(
                  elevation: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 80,
                    width: 260,
                    child: Row(
                      children: [
                        SizedBox(width: 12,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.shade400,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              height: 10,
                              width: 120,
                            ),
                            SizedBox(height: 12,),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              height: 10,
                              width: 80,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Center(
            child: Text("New transactions will appear here as\n    you start using Snackzilla Wallet"
              ,style: TextStyle(color: Colors.grey,fontFamily: 'pageHead', fontSize: 14),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}