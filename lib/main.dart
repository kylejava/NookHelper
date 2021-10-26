import 'package:flutter/material.dart';
import 'package:nookhelper/screens/bugList.dart';
import 'package:nookhelper/screens/fishList.dart';
import 'package:nookhelper/screens/seaCritterList.dart';
import 'package:nookhelper/screens/index.dart';
import 'package:nookhelper/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'FinkHeavy'),
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen':(context) => SplashScreen(),
        '/index': (context) => Index(),
        '/bugList': (context) => BugList(),
        '/fishList': (context) => FishList(),
        '/seaCritterList': (context) => SeaCritterList()
      },
    );
  }
}
