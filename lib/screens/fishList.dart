import 'package:flutter/material.dart';
import 'package:nookhelper/data/fish.dart';
import 'package:flip_card/flip_card.dart';
class FishList extends StatefulWidget {
  @override
  _FishListState createState() => _FishListState();
}

class _FishListState extends State<FishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Fish'),
        backgroundColor:  Colors.green[300],
      ),
      body: Container(
        decoration:  new BoxDecoration(
          image: new DecorationImage(image: new AssetImage("assets/bg.png"), fit: BoxFit.cover,),
        ),
        child: GridView.builder(
          itemCount: fish.length,
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
                          Image.network(fish[index]['Icon Image']),
                          Text(fish[index]['Name'] , style:  TextStyle(fontSize: 19.0),),
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
                          fish[index]['Sell'].toString(),
                          style: TextStyle(fontSize: 25.0),

                        ),
                        Image.asset('assets/bellpouch.png' , width: 70.0, height: 70.0,),

                      ],
                    ),
                  ),
                ),
              );

            /*GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/selectedFish' , arguments: {
                  'selectedFish': fish[index],
                  }
                );
              },
              child: Card(
                color: Colors.green[300],
                child: Center(
                  child: Column(
                    children: [
                      Image.network(fish[index]['Icon Image']),
                      Text(fish[index]['Name'] , style:  TextStyle(fontSize: 19.0),),
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
