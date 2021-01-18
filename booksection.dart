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
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Image.network('https://media.tenor.com/images/63487eced92f98b84cb301de62c0fb46/tenor.gif'),
          Image.network('https://media1.giphy.com/media/l46Cei9gnXaJFGInu/giphy.gif'),
          Image.network('https://i.pinimg.com/originals/a7/78/19/a778193d04758b169fca966fe0655645.gif' , width: 210,height: 215,),
        ],
      ),
    );
  }
}
