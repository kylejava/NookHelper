import 'package:flutter/material.dart';

class SelectedCritter extends StatefulWidget {
  @override
  _SelectedCritterState createState() => _SelectedCritterState();
}

class _SelectedCritterState extends State<SelectedCritter> {
  Map critter = {};
  @override
  Widget build(BuildContext context) {
    critter =   ModalRoute.of(context).settings.arguments;
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
                    Image.network(critter['selectedCritter']['Icon Image']),
                    Text(critter['selectedCritter']['Name']),
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
                            Text(critter['selectedCritter']['Sell'].toString()),
                            Image.asset('assets/bellpouch.png' , width: 40.0, height: 40.0,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Text('Shadow'),
                        Text(critter['selectedCritter']['Shadow'].toUpperCase())
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
                          Text('Movement Speed'),
                          Text(critter['selectedCritter']['Movement Speed']),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Text('Total Catches \n to Unlock'),
                          Text(critter['selectedCritter']['Total Catches to Unlock'].toString()),
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
