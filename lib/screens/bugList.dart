import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:nookhelper/data/insects.dart';
import 'package:flip_card/flip_card.dart';
class BugList extends StatefulWidget {
  @override
  _BugListState createState() => _BugListState();
}

class _BugListState extends State<BugList> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Bugs'),
        backgroundColor:  Colors.green[300],
      ),
      body: Container(
        decoration:  new BoxDecoration(
          image: new DecorationImage(image: new AssetImage("assets/bg.png"), fit: BoxFit.cover,),
        ),
        child: GridView.builder(
          itemCount: insects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index){
            return FlipCard(
              direction: FlipDirection.HORIZONTAL, // default
              front: Container(
                child: Card(
                  color: Colors.green[300],
                  child: Center(
                    child: Column(
                      children: [
                        Image.network(insects[index]['Icon Image']),
                        Text(insects[index]['Name'] , style:  TextStyle(fontSize: 19.0),),
                      ],
                    ),
                  ),
                ),
              ),
              back: Container(
                child: Card(
                  color: Colors.green[300],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        insects[index]['Sell'].toString(),
                        style: TextStyle(fontSize: 25.0),

                      ),
                      Image.asset('assets/bellpouch.png' , width: 70.0, height: 70.0,),

                    ],
                  ),
                ),
              ),
            );



              /*
              GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/selectedBug' , arguments: {
                  'selectedBug': insects[index],
                }
                );
              },
              child: Card(
                color: Colors.green[300],
                child: Center(
                  child: Column(
                    children: [
                      Image.network(insects[index]['Icon Image']),
                      Text(insects[index]['Name']),
                    ],
                  ),
                ),
              ),
            );*/
          },
        ),
      ),
    );
  }
}
