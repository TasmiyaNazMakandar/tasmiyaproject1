import 'dart:math';

import 'package:flutter/material.dart';
import 'package:heath_care/viewlist.dart';

class Doctordetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Care App'),
          backgroundColor: Colors.blue,
        
      ),
      body: Container(

        color: Colors.blue,
        child: Column(
          children: [
            ClipPath(
            clipper: CurvedBottomClipper(),
        child: Container(
          color: Colors.white,
          height: 250.0,
          child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Text(
                  "Health is a state of complete harmony of the body, mind and spirit",textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
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
                    color: Colors.black,
                  ),
                  ),
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUkLHx2IGkRVAsg1pnAX-HPixX14bOOK60og&usqp=CAU',width: 150,height: 140,),
                  FlatButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context) => View()));}, child: Text('Viewlist'),color: Colors.white,)
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

