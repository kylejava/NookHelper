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
                    child: Column(
                      children: [
                        Text('Price'),
                        Row(
                          children: [
                            Text(fish['selectedFish']['Sell'].toString()),
                            Image.asset('assets/bellpouch.png' , width: 40.0, height: 40.0,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Text('Location'),
                        Text(fish['selectedFish']['Where']['How'])
                      ],
                    ),
                  )
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Text('Shadow Size'),
                          Text(fish['selectedFish']['Shadow']),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Text('Catch Difficulty'),
                          Text(fish['selectedFish']['Catch Difficulty']),
                        ],
                      ),
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