
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Snackzilla",
                  style: TextStyle(
                    fontFamily: 'title',
                    fontSize: 47,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "The only monster you’ll actually want at your door.",
                  style: TextStyle(
                    fontFamily: 'description',
                    color: Colors.white,
                    fontSize: 8.5,
                  ),
                ),
                SizedBox(height: 80,),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(alignment: Alignment.centerLeft,child: Text("Email Address", style: TextStyle(fontFamily: 'pageHead'),)),
                      SizedBox(height: 06,),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail,color: Colors.grey,),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2
                            )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          label: Text('Enter Your Email Address', style: TextStyle(color: Colors.grey,fontFamily: 'description'),),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2
                            ),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),
                      SizedBox(height: 16,),
                      Align(alignment: Alignment.centerLeft,child: Text("Password", style: TextStyle(fontFamily: 'pageHead'),)),
                      SizedBox(height: 6,),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password,color: Colors.grey,),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          label: Text('Enter Your Password', style: TextStyle(color: Colors.grey,fontFamily: 'description'),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),
                      SizedBox(height: 1,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed:(){

                        } , child: Text("Forgot Password?", style: TextStyle(color: Colors.grey.shade700,fontFamily: 'description'))),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (_){}),
                          Expanded(
                              child: Text.rich(
                                  TextSpan(
                                    text: "I've read and agree to ",
                                    children:
                                      [
                                        TextSpan(
                                          text: "privacy policy",
                                          style: TextStyle(color: Colors.red.shade400)
                                        ),
                                        TextSpan(text: ' and '),
                                        TextSpan(
                                            text: "user agreement",
                                            style: TextStyle(color: Colors.red.shade400)
                                        ),
                                      ]
                              ))
                          )
                        ],
                      ),
                      SizedBox(height: 28,),
                      ElevatedButton(
                          onPressed: (){

                          },
                          child: Text("Sign in", style: TextStyle(color: Colors.white, fontFamily: 'pageHead', fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          padding: EdgeInsets.symmetric(vertical: 14,horizontal: 80)
                        ),
                      ),
                      SizedBox(height: 14,),
                      Text("Other Ways to Sign In", style: TextStyle(fontFamily: 'description',fontSize: 10),),
                      SizedBox(height: 28,),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.google), )
                        ],
                      )
                    ],  
                  ),
                )
              ],
            ),
          ),
    );

  }
}