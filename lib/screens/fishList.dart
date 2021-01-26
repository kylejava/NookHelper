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
      ),
      body: GridView.builder(
        itemCount: fish.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            child: Card(
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
    );
  }
}
