import 'package:flutter/material.dart';
import 'package:nookhelper/data/seaCreatures.dart';

class SeaCritterList extends StatefulWidget {
  @override
  _SeaCritterListState createState() => _SeaCritterListState();
}

class _SeaCritterListState extends State<SeaCritterList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Sea Critters'),
      ),
      body: GridView.builder(
        itemCount: seaCreatures.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            child: Card(
              child: Center(
                child: Column(
                  children: [
                    Image.network(seaCreatures[index]['Icon Image']),
                    Text(seaCreatures[index]['Name']),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
