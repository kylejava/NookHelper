import 'package:flutter/material.dart';
import 'package:nookhelper/screens/bugList.dart';
import 'package:nookhelper/screens/fishList.dart';
import 'package:nookhelper/screens/seaCritterList.dart';
import 'package:nookhelper/screens/selectedCritter.dart';
import 'package:nookhelper/screens/selectedFish.dart';
import 'package:nookhelper/screens/selectedBug.dart';
import 'package:nookhelper/screens/index.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/index',
      routes: {
        '/index': (context) => Index(),
        '/bugList': (context) => BugList(),
        '/fishList': (context) => FishList(),
        '/selectedFish':(context) =>SelectedFish(),
        '/selectedBug':(context) =>SelectedBug(),
        '/selectedCritter':(context) =>SelectedCritter(),
        '/seaCritterList': (context) => SeaCritterList()
      },
    );
  }
}
