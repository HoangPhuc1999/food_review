import 'package:flutter/material.dart';
import 'package:foodreview_app/base/color.dart';

import '../base/route.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/logo.png',
              height: 450,
              width: 450,
              alignment: Alignment.center,
            ),

          ],
        ),
      ),
    );
  }

  Future<void> _navigateToHome(BuildContext context) async {
    await Future<void>.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, RoutesName.homePage);
  }
}
