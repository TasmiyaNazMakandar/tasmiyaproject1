import 'package:flutter/material.dart';

class booksection extends StatefulWidget {
  @override
  _booksectionState createState() => _booksectionState();
}

class _booksectionState extends State<booksection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Health Care App')),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.black12,
        width: MediaQuery.of(context).size.width*0.8,
        height: MediaQuery.of(context).size.height*0.8,
        child: Column(
          children: [

            Image.network('https://media.tenor.com/images/63487eced92f98b84cb301de62c0fb46/tenor.gif',width: 100,height: 100,),
            Image.network('https://media1.giphy.com/media/l46Cei9gnXaJFGInu/giphy.gif',width: 100,),
            Image.network('https://i.pinimg.com/originals/a7/78/19/a778193d04758b169fca966fe0655645.gif' , width: 100,height: 100,),


          ],
        ),

      ),
    );
  }
}
