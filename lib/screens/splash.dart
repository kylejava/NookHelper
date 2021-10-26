import 'package:flutter/material.dart';
import 'package:nookhelper/screens/index.dart';
import 'dart:async';
import 'dart:ui';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) =>
                    Index()
                )
            )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  new BoxDecoration(
        image: new DecorationImage(image: new AssetImage("assets/bg.png"), fit: BoxFit.cover,),
      ),
      child: Center(
        child: Text(
          'Nook \n Helper' ,
          style: TextStyle(fontSize: 70.0, color: Colors.white, fontFamily: 'FinkHeavy'),
        ),
      ),
    );
  }
}
