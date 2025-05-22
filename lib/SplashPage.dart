import 'package:flutter/material.dart';
import 'package:snackzilla/LoginSignup/LoginPage.dart';
import 'main.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Animation setup
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    ));

    _controller.forward();

    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      body: Stack(
        children: [
          Center(
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
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
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //   bottom: -15,
          //   right: -45,
          //   child: Image.asset(
          //     'assets/Images/main.png',
          //     width: 200,
          //     height: 200,
          //   ),
          // ),
        ],
      ),
    );
  }
}
