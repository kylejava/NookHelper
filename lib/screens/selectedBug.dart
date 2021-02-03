import 'package:flutter/material.dart';

class SelectedBug extends StatefulWidget {
  @override
  _SelectedBugState createState() => _SelectedBugState();
}

class _SelectedBugState extends State<SelectedBug> {
  Map bug = {};
  @override
  Widget build(BuildContext context) {
    bug =  ModalRoute.of(context).settings.arguments;
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
                    Image.network(bug['selectedBug']['Icon Image']),
                    Text(bug['selectedBug']['Name']),
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
                            Text(bug['selectedBug']['Sell'].toString()),
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
                        Text(bug['selectedBug']['Where']['How'])
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
                          Text('Weather'),
                          Text(bug['selectedBug']['Weather']),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Text('Total Catches \n to Unlock'),
                          Text(bug['selectedBug']['Total Catches to Unlock'].toString()),
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
