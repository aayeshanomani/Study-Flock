import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopoid/screens/loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen();

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff839788),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/download.png'),
            ),
            Text(
              'Study Flock',
              style: TextStyle(
                  fontSize: 27,
                  fontFamily: 'PT_Sans_Narrow',
                  color: Color(0xff36151E),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 28,),
            Text(
              'All spotlight on your knowledge!',
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'PT_Sans_Narrow',
                  color: Color(0xffBB4430),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3
                ),
            ),
            SizedBox(height: 283,),
            Text("Product Development Lab")
          ],
        ),
      ),
    );
  }
}
