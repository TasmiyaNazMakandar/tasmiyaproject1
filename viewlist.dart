import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:heath_care/amlya.dart';
import 'package:heath_care/arbaz.dart';
import 'package:heath_care/shrutii.dart';

import 'vikas.dart';


class View extends StatelessWidget {
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Find Your Desired Doctor',style: TextStyle(
            color: Colors.black,
                fontWeight: FontWeight.bold
          ),
          ),
          backgroundColor: Colors.white,
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(

          child: ListView(

            children: [
              Column(
                children: [
                  Container(
                    width:650,
                    height: 30,
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(Icons.search_rounded,color: Colors.orangeAccent,),
                      title: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                            hintText: 'Search for doctor',border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  Container(

                    margin: const EdgeInsets.all(10),
                    width: 250,
                    height: 30,
                    child: Text('Categoris',style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                    ),
                  ),

                  Container(

                    child: Card(
                      elevation: 3,
                      color: Colors.white,
                      child: Row(
                        children: [
                          FractionalTranslation(
                            translation: Offset(0.5, -0.3),
                            child: Align(
                              child: Container(
                                width: 30,
                                height: 40,
                                child: Image.network('https://image.shutterstock.com/image-vector/cartoon-tooth-giving-thumb-260nw-602566124.jpg',width: 400,height: 300,),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)
                                ) ,
                                padding: const EdgeInsets.only(left: 0),

                              ),
                            ),
                          ),
                          Container(
                            child: Text("Dental \nSurgeon",style: TextStyle(color: Colors.purple),),
                            padding: const EdgeInsets.only(top: 0, right: 10, left: 10),
                            margin: const EdgeInsets.only(top: 0, right: 10, left: 10),
                          ),
                          Card(
                            child:Row(
                              children: [
                                FractionalTranslation(
                                  translation: Offset(0.5, -0.3),
                                  child: Align(
                                    child: Container(
                                      width: 30,
                                      height: 40,
                                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXoa59T6l1WBkC-PMA3rXwtKfC-n4om1hd0Q&usqp=CAU',width: 400,height: 300,),
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ) ,
                                      padding: const EdgeInsets.only(left: 0),

                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text("Heart \nSurgeon",style: TextStyle(color: Colors.purple),),
                                  padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                  margin: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                ),


                              ],
                            ),


                          ),

                        ],
                      ),
                    ),
                  )


                ],
              ),
              Container(
                height: 30,
                child:Text('Top Doctors',textAlign: TextAlign.left,style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),) ,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Drvikas()));
                },
                child: Container(
                  width: 330,
                  height: 90,
                  color: Colors.blue,
                  child: ListTile(
                    leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaXts5ABhK9e_f6JHZ1B0-vidUBb75LTOSYw&usqp=CAU'),
                    title: Text('Dr.Vikas'),
                    subtitle: Text('Heart Surgon-Flower Hospitals'),
                  ),

                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>A()));
                },
                child: Container(
                  width: 330,
                  height: 90,
                  color: Colors.white24,
                  child: ListTile(
                    leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaXts5ABhK9e_f6JHZ1B0-vidUBb75LTOSYw&usqp=CAU'),
                    title: Text('Dr.Shruti'),
                    subtitle: Text('Dental Surgon-Flower Hospitals'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Amulya()));
                },
                child: Container(
                  width: 330,
                  height: 90,
                  color: Colors.blue,
                  child: ListTile(
                    leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaXts5ABhK9e_f6JHZ1B0-vidUBb75LTOSYw&usqp=CAU'),
                    title: Text('Dr.Amuliya'),
                    subtitle: Text('Heart Surgon-Flower Hospitals'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AA2()));
                },
                child: Container(
                  width: 330,
                  height: 90,
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaXts5ABhK9e_f6JHZ1B0-vidUBb75LTOSYw&usqp=CAU'),
                    title: Text('Dr.Arbaaz'),
                    subtitle: Text('Dental Surgon-Flower Hospitals'),
                  ),
                ),
              )






            ],


          ),
        ),
      ),




    );
  }
}
