import 'package:currency_task/all_screen/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String screenId = "SplashScreen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 6),
        lowerBound: 0.2,
        upperBound: 0.6);
    _animationController.forward();
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return HomePage();
          }),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScaleTransition(
        scale: _animationController,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage("images/1.png"),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }
}
