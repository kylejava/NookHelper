import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  new BoxDecoration(
          image: new DecorationImage(image: new AssetImage("assets/bg.png"), fit: BoxFit.cover,),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Nook \n Helper' ,
                    style: TextStyle(fontSize: 70.0, color: Colors.white),
                ),
                SizedBox(height: 80.0,),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.green[300])
                  ),

                  color: Colors.green[300],
                  onPressed: (){
                    Navigator.pushNamed(context, '/fishList');
                  },
                  child: Text(
                    'Fish',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.green[300])
                  ),
                  color: Colors.green[300],
                  onPressed: (){
                    Navigator.pushNamed(context, '/bugList');
                  },
                  child: Text(
                    'Insects',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.green[300])
                  ),
                  color: Colors.green[300],
                  onPressed: (){
                    Navigator.pushNamed(context, '/seaCritterList');
                  },
                  child: Text(
                    'Sea Critters',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
