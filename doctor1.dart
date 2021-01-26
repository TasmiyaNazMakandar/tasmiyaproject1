import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:heath_care/amlya.dart';
import 'package:heath_care/arbaz.dart';
import 'package:heath_care/shrutii.dart';

import 'vikas.dart';


class View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Health care App',style: TextStyle(
            color: Colors.white,
                fontWeight: FontWeight.bold
          ),
          ),
          backgroundColor: Colors.blue,
        ),
    body: ListSearch(),


    );
  }
}
class ListSearch extends StatefulWidget {
  ListSearchState createState() => ListSearchState();
}

class ListSearchState extends State<ListSearch> {

  TextEditingController _textController = TextEditingController();

  static List<String> mainDataList = [

  ];

  // Copy Main List into New List.
  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Search Here...',
              ),
              onChanged: onItemChanged,
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(12.0),

              children: [
               Text('Top Doctors ',textAlign: TextAlign.start,style: TextStyle(
                 fontWeight: FontWeight.bold
               ),

               ),

                Column(
                  children: [
                    Container(
                      width: 270,
                      height:40,
                      color: Colors.white,
                      child: Text('Find Your Desired Doctor',textAlign: TextAlign.center,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),),
                    ),

                    Container(
                      width: 370,
                      height:110,
                      color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(onPressed:(){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Drvikas()));
                        },
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgS_ewjAIkhoGGOm_947G1QW1tHbexcAen6w&usqp=CAU",width:100,height: 100,),
                        ),
                        Text('Dr.Vikas',textAlign: TextAlign.justify,style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),

                      ],
                    ),
                    ),
                    Container(
                      width: 370,
                      height:110,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RaisedButton(onPressed:(){Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Amulya()));},
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmc-cXYXofN9hPuX5omSPDrEY45YLWuvHrng&usqp=CAU",width:100,height: 100,),
                          ),
                          Text('Dr.Amulya',textAlign: TextAlign.justify,style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      width: 370,
                      height:110,
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RaisedButton(onPressed:(){Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AA2()));},
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6vvtZydhOANrVMNrnSTKxHZirhWvY9R6i1g&usqp=CAU",width:100,height: 100,),
                          ),
                          Text('Dr.Arbaaz',textAlign: TextAlign.justify,style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      width: 370,
                      height:110,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RaisedButton(onPressed:(){Navigator.push(context,
                              MaterialPageRoute(builder: (context) => A()));},
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV_RPN2bROTCOrnw6M41cC-P6Rm9eu4mDTyA&usqp=CAU",width:100,height: 100,),
                          ),
                          Text('Dr.Shruti',textAlign: TextAlign.justify,style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                          ),

                        ],
                      ),
                    ),
                  ],

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
