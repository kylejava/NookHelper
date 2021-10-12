import 'package:flutter/material.dart';
import 'package:nookhelper/screens/bugList.dart';
import 'package:nookhelper/screens/fishList.dart';
import 'package:nookhelper/screens/seaCritterList.dart';
import 'file:///C:/Users/Kyle/Desktop/code/NookHelper/nookhelper/lib/screens/unused_screens/selectedCritter.dart';
import 'file:///C:/Users/Kyle/Desktop/code/NookHelper/nookhelper/lib/screens/unused_screens/selectedFish.dart';
import 'file:///C:/Users/Kyle/Desktop/code/NookHelper/nookhelper/lib/screens/unused_screens/selectedBug.dart';
import 'package:nookhelper/screens/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'FinkHeavy'),
      initialRoute: '/index',
      routes: {
        '/index': (context) => Index(),
        '/bugList': (context) => BugList(),
        '/fishList': (context) => FishList(),
        '/seaCritterList': (context) => SeaCritterList()
      },
    );
  }
}
