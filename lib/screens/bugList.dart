import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:nookhelper/data/insects.dart';
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
            return GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/selectedBug' , arguments: {
                  'selectedBug': insects[index],
                }
                );
              },
              child: Card(
                child: Center(
                  child: Column(
                    children: [
                      Image.network(insects[index]['Icon Image']),
                      Text(insects[index]['Name']),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
