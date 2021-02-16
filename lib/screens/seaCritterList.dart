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
        backgroundColor:  Colors.green[300],
      ),
      body:Container(
        decoration:  new BoxDecoration(
          image: new DecorationImage(image: new AssetImage("assets/bg.png"), fit: BoxFit.cover,),
        ),
        child:  GridView.builder(
          itemCount: seaCreatures.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/selectedCritter' , arguments: {
                  'selectedCritter': seaCreatures[index],
                }
                );
              },
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
      ),
    );
  }
}
