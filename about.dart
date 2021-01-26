import 'package:flutter/material.dart';
import 'package:heath_care/viewlist.dart';
import 'package:url_launcher/url_launcher.dart';

import 'contac.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft, end: Alignment(1.19,0.9),colors: [
                    const Color(0xffff),
                    const Color(0xffff8bbd)
                  ]
                  ),
                image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu4rIUbf6CXP-CvINiSUSZFx7qYhWvUnD1PQ&usqp=CAU'),),
              ),
            ),
          ),
          Container(
            width: 450,
            height: 200,
            child: ListTile(
              title: Text('About Us'),

              subtitle: Text('Skycliff IT is passionately built to excel in Quality, Value and Time driven Techno Commercial world. We understand the Customer Requirements and Time bound business commitments, thus, perform time critical processes to deliver accurate results with quality as the prime and unique proposition.',textAlign: TextAlign.justify,),
            )
          ),
          RaisedButton(onPressed: ()=> _launchURL(),
            child: Text('Read More About Us'),
            color: Colors.lightBlue,),
          RaisedButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  Contact()));

          },  color: Colors.lightBlue,
            child: Text('Contact Us'),),

        ],
      ),

    );
  }
}

class MyClipper  extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 90);
    var controllPoint = Offset(70,size.height);
    var endPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

}

_launchURL() async {
  const url = 'http://www.skycliffit.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
