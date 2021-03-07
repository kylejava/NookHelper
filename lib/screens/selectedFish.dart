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
      body: Container(
        decoration:  new BoxDecoration(
          image: new DecorationImage(image: new AssetImage("assets/bg.png"), fit: BoxFit.cover,),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Column(
                  children: [
                    Image.network(fish['selectedFish']['Icon Image']),
                    Text(
                      fish['selectedFish']['Name'],
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Column(
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(fontSize: 25.0),
                        ),
                        Row(
                          children: [
                            Text(
                              fish['selectedFish']['Sell'].toString(),
                              style: TextStyle(fontSize: 25.0),

                            ),
                            Image.asset('assets/bellpouch.png' , width: 50.0, height: 50.0,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          fish['selectedFish']['Where']['How'],
                          style: TextStyle(fontSize: 25.0),
                        )
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
                          Text(
                            'Shadow \nSize',
                            style: TextStyle(fontSize: 25.0),
                          ),
                          Text(
                            fish['selectedFish']['Shadow'],
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Text(
                            'Catch \nDifficulty',
                            style: TextStyle(fontSize: 25.0),
                          ),
                          Text(
                            fish['selectedFish']['Catch Difficulty'],
                            style: TextStyle(fontSize: 25.0),
                          ),
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
