import 'package:flutter/material.dart';

class SelectedFish extends StatefulWidget {
  @override
  _SelectedFishState createState() => _SelectedFishState();
}

class _SelectedFishState extends State<SelectedFish> {
  Map fish = {};

  Widget _TopPanel(){
    return Container(
      width: 300,
      child:  Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.network(fish['selectedFish']['Icon Image'], fit: BoxFit.fitWidth),
          ),
           Align(
            alignment: Alignment.center,
            child:Text(
            fish['selectedFish']['Name'],
            style: TextStyle(fontSize: 35.0),
     ),
      ),
      ],
      ),
      ),
    );
  }
  Widget _RowOne(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Container(
         height:150,
         width: 150,
         child:  Card(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                 'Price',
                 style: TextStyle(fontSize: 40.0),
               ),
               SizedBox(height: 20,),
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [

                   Text(
                     fish['selectedFish']['Sell'].toString(),
                     style: TextStyle(fontSize: 30.0),

                   ),
                   //Image.asset('assets/bellpouch.png' , width: 70.0, height: 70.0,),
                   Text(
                     'Bells',
                     style: TextStyle(fontSize: 30.0),
                   )
                 ],
               ),
             ],
           ),
         ),
       ),
        SizedBox(width: 20,),
        Container(
          height: 150,
          width: 150,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Location',
                  style: TextStyle(fontSize: 35.0),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    fish['selectedFish']['Where']['How'],
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  Widget _RowTwo(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Container(
           width: 150,
           height: 150,
           child:  Card(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                   'Shadow \nSize',
                   style: TextStyle(fontSize: 40.0),
                   textAlign: TextAlign.center,
                 ),
                 SizedBox(height: 10,),
                 Text(
                   fish['selectedFish']['Shadow'],
                   style: TextStyle(fontSize: 25.0),
                   textAlign: TextAlign.center,
                 ),
               ],
             ),
           ),
         ),
          SizedBox(width: 20,),
          Container(

            width: 150,
            height: 150,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Catch \nDifficulty',
                    style: TextStyle(fontSize:30.0),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    fish['selectedFish']['Catch Difficulty'],
                    style: TextStyle(fontSize: 30.0),
                  ),
                ],
              ),
            ),
          ),
        ]
    );
  }

  @override
  Widget build(BuildContext context) {
    fish = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
      ),
      body: Container(
        decoration:  new BoxDecoration(
          image: new DecorationImage(image: new AssetImage("assets/bg.png"), fit: BoxFit.cover,),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView(
            shrinkWrap: false,
            children: [
              _TopPanel(),
              SizedBox(height: 50.0,),
              _RowOne(),
              SizedBox(height: 30.0,),
              _RowTwo()
              /*
              Card(
                child: Column(
                  children: [
                    Image.network(fish['selectedFish']['Icon Image']),
                    Text(
                      fish['selectedFish']['Name'],
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Column(
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(fontSize: 25.0),
                        ),
                        Row(
                          children: [
                            Text(
                              fish['selectedFish']['Sell'].toString(),
                              style: TextStyle(fontSize: 25.0),

                            ),
                            Image.asset('assets/bellpouch.png' , width: 50.0, height: 50.0,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          fish['selectedFish']['Where']['How'],
                          style: TextStyle(fontSize: 25.0),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Text(
                            'Shadow \nSize',
                            style: TextStyle(fontSize: 25.0),
                          ),
                          Text(
                            fish['selectedFish']['Shadow'],
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Text(
                            'Catch \nDifficulty',
                            style: TextStyle(fontSize: 25.0),
                          ),
                          Text(
                            fish['selectedFish']['Catch Difficulty'],
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ],
                      ),
                    )
                  ]
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
