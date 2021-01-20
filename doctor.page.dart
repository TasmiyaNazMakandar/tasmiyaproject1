import 'dart:math';

import 'package:flutter/material.dart';

class Doctordetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors List')
        ,
      ),
      body: Container(
        color: Colors.amberAccent,
        child: Column(
          children: [
            ClipPath(
            clipper: CurvedBottomClipper(),
        child: Container(
          color: Colors.lightGreenAccent,
          height: 250.0,
          child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Text(
                  "Health is a state of complete harmony of the body, mind and spirit",textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.purpleAccent,
                  ),
                ),
              )
          ),
        ),
            ),
            Container(

              child:  Column(
                children: [
                  Text('Choose your Doctor',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                  ),
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUkLHx2IGkRVAsg1pnAX-HPixX14bOOK60og&usqp=CAU'),
                  FlatButton(onPressed: (){}, child: Text('Viewlist'),color: Colors.indigo,)
                ],

              ),

            )
          ],
        ),
      )

    );
  }
}
class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    final roundingHeight = size.height * 3 / 5;


    final filledRectangle =
    Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);


    final roundingRectangle = Rect.fromLTRB(
        -5, size.height - roundingHeight * 2, size.width + 5, size.height);

    final path = Path();
    path.addRect(filledRectangle);


    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {

    return true;
  }
}


