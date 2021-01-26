import 'package:flutter/material.dart';

class SelectedFish extends StatefulWidget {
  @override
  _SelectedFishState createState() => _SelectedFishState();
}

class _SelectedFishState extends State<SelectedFish> {
  Map fish = {};
  @override
  Widget build(BuildContext context) {
    fish = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Column(
                  children: [
                    Image.network(fish['selectedFish']['Icon Image']),
                    Text(fish['selectedFish']['Name']),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Text(fish['selectedFish']['Sell'].toString() + " Bells"),
                  ),
                  Card(
                    child: Text(fish['selectedFish']['Where']['How']),
                  )
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Text(fish['selectedFish']['Shadow']),
                    ),
                    Card(
                      child: Text(fish['selectedFish']['Catch Difficulty']),
                    )
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
