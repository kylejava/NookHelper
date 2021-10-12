import 'package:flutter/material.dart';
import 'package:nookhelper/data/seaCreatures.dart';
import 'package:flip_card/flip_card.dart';
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
            return FlipCard(
              direction: FlipDirection.HORIZONTAL, // default
              front: Container(
                child: Card(
                  color: Colors.green[300],
                  child: Center(
                    child: Column(
                      children: [
                        Image.network(seaCreatures[index]['Icon Image']),
                        Text(seaCreatures[index]['Name'] , style:  TextStyle(fontSize: 19.0),),
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
                        seaCreatures[index]['Sell'].toString(),
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
            );*/
          },
        ),
      ),
    );
  }
}
