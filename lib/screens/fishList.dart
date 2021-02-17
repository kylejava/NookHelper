import 'package:flutter/material.dart';
import 'package:nookhelper/data/fish.dart';
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
            return GestureDetector(
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
                      Text(fish[index]['Name']),
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
