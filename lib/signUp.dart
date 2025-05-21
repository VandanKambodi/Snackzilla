import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:snackzilla/LoginPage.dart';
import 'package:snackzilla/homePage.dart';

class signUp extends StatefulWidget{
  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.red.shade400,
      body:

      LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    const SizedBox(height: 5),
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
                    SizedBox(height: 70,),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Text("Full Name",
                              style: TextStyle(
                                  fontFamily: 'pageHead', fontSize: 16)),
                          const SizedBox(height: 10),
                          TextField(
                            keyboardType: TextInputType.name,
                            cursorColor: Colors.redAccent,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person, color: Colors.grey),
                              hintText: 'Enter Your Name',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'description'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.redAccent),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text("Email Address",
                              style: TextStyle(
                                  fontFamily: 'pageHead', fontSize: 16)),
                          const SizedBox(height: 10),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.redAccent,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail, color: Colors.grey),
                              hintText: 'Enter Your Email Address',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'description'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.redAccent),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text("Password",
                              style: TextStyle(
                                  fontFamily: 'pageHead', fontSize: 16)),
                          const SizedBox(height: 10),
                          TextField(
                            cursorColor: Colors.redAccent,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Colors.grey),
                              hintText: 'Enter Your Password',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'description'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.redAccent),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (_) {}),
                              Expanded(
                                child: Text.rich(
                                  TextSpan(
                                    text: "I've read and agree to ",
                                    children: [
                                      TextSpan(
                                          text: "privacy policy",
                                          style: TextStyle(
                                              color: Colors.red.shade400)),
                                      TextSpan(text: " and "),
                                      TextSpan(
                                          text: "user agreement",
                                          style: TextStyle(
                                              color: Colors.red.shade400)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> homePage()));
                              },
                              child: Text("Sign up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'pageHead',
                                      fontSize: 18)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red.shade400,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 90),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Center(
                              child: Text("Other Ways to Sign In",
                                  style: TextStyle(
                                      fontFamily: 'description', fontSize: 12))),
                          const SizedBox(height: 0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 15,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(FontAwesomeIcons.google),
                                  color: Colors.black),
                              IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(FontAwesomeIcons.facebook),
                                  color: Colors.black),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already Have An Account? ",
                                  style: TextStyle(
                                      fontFamily: 'description', fontSize: 12)),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                },
                                child: Text("Sign In",
                                    style: TextStyle(
                                        color: Colors.red.shade400,
                                        fontFamily: 'description',
                                        fontSize: 14)),
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
          );
        },
      ),
    );
  }
}
