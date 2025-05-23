import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snackzilla/LoginSignup/forgotPass.dart';
import 'package:snackzilla/Home/homePage.dart';
import 'package:snackzilla/LoginSignup/signUp.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    const SizedBox(height: 100),
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
                    SizedBox(height: 110),
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
                          Text(
                            "Email Address",
                            style: TextStyle(
                              fontFamily: 'pageHead',
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.redAccent,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail, color: Colors.grey),
                              hintText: 'Enter Your Email Address',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'description',
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
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
                          Text(
                            "Password",
                            style: TextStyle(
                              fontFamily: 'pageHead',
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            cursorColor: Colors.redAccent,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Colors.grey),
                              hintText: 'Enter Your Password',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'description',
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
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
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ForgotPass(),
                                  ),
                                );
                              },
                              child: Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'description',
                                ),
                              ),
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                              ),
                            ),
                          ),
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
                                          color: Colors.red.shade400,
                                        ),
                                      ),
                                      TextSpan(text: " and "),
                                      TextSpan(
                                        text: "user agreement",
                                        style: TextStyle(
                                          color: Colors.red.shade400,
                                        ),
                                      ),
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => homePage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'pageHead',
                                  fontSize: 18,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red.shade400,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 14,
                                  horizontal: 90,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: Text(
                              "Other Ways to Sign In",
                              style: TextStyle(
                                fontFamily: 'description',
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 15,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.google),
                                color: Colors.black,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.facebook),
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't Have An Account? ",
                                style: TextStyle(
                                  fontFamily: 'description',
                                  fontSize: 12,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => signUp(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.red.shade400,
                                    fontFamily: 'description',
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
          );
        },
      ),
    );
  }
}
