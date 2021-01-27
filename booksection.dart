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
/////

import 'package:flutter/material.dart';


class booksection extends StatefulWidget {
  @override
  _booksectionState createState() => _booksectionState();
}

class _booksectionState extends State<booksection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: (Text('Health Care App')),
        backgroundColor: Colors.blue,
      ),
        body: GridView.count(crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,
          children: <Widget>[
            Image.network('https://media.tenor.com/images/be3743df770695c8e6138622f92563bf/tenor.gif'),
            Image.network('https://i.pinimg.com/originals/c7/ed/b3/c7edb3b8fc5d14ac64bc73ad11e64e15.gif'),
            Image.network('https://www.animatedimages.org/data/media/1679/animated-yoga-image-0029.gif'),
            Image.network('https://media.tenor.com/images/be3743df770695c8e6138622f92563bf/tenor.gif'),
            Image.network('https://i.pinimg.com/originals/c7/ed/b3/c7edb3b8fc5d14ac64bc73ad11e64e15.gif'),
            Image.network('https://s3.r29static.com/bin/entry/22f/x/1421366/image.gif'),
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4Fbyr28cOQQ7Qzl9tlRJOUg8P2sRP8LseiQ&usqp=CAU'),
            Image.network('https://media1.giphy.com/media/4bjIKBOWUnVPICCzJc/giphy.gif'),
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC9GDcrPH8n4gPB_keegE3zKjxALG-MmrLRg&usqp=CAU'),
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpMtIwVZRZlyxA-vZfM4h5f5nvfJXv6X7f2w&usqp=CAU'),
            Image.network('https://i.pinimg.com/originals/ea/74/e8/ea74e8b1ebbe6137d93bf1d27da07393.gif'),
            Image.network('https://media3.giphy.com/media/IbTZFV8eOja2zumvq4/giphy.gif'),
          ],
        )
    );
  }
}
