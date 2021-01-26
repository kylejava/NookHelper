import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('NookHelper'),
              FlatButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, '/fishList');
                },
                icon: Icon(Icons.arrow_forward),
                label: Text('Fish'),
              ),
              FlatButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, '/bugList');
                },
                icon: Icon(Icons.arrow_forward),
                label: Text('Insects'),
              ),
              FlatButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, '/seaCritterList');
                },
                icon: Icon(Icons.arrow_forward),
                label: Text('Sea Critters'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
