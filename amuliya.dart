import 'package:flutter/material.dart';
import 'package:heath_care/viewlist.dart';

class Amulya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 187.0,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,

                  image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/vectors/doctor-cartoon-character-vector-id1063651642'))
              ),
              child: Center(

              ),
            ),
          ),
          Container(
            width: 360,
            height: 80,
            child: ListTile(
              title: Text('Dr.Amulya'),
              leading: Icon(Icons.phone,color:Colors.green),
              subtitle: Text('Physicians and surgeons diagnose and treat injuries or illnesses. ',textAlign: TextAlign.justify,),
            ),

          ),


          Container(
            color: Colors.white,
            width: 360,
            height: 80,
            child: ListTile(
              title: Text('Tuseday'),
              subtitle: Text('Date:26-01-2021,Time:10:30 AM'),
              contentPadding: const EdgeInsets.only(
                  top: 10, left: 15),
            ),

          ),
          Container(
            color: Colors.tealAccent,
            width: 360,
            height: 80,
            child: ListTile(
              title: Text('Wednesday'),
              subtitle: Text('Date:27-01-2021,Time:2:00 PM'),
              contentPadding: const EdgeInsets.only(
                  top: 10, left: 15),
            ),
          ),
          Container(
            color: Colors.white,
            width: 360,
            height: 80,
            child: ListTile(
              title: Text('Thursday'),
              subtitle: Text('Date:28-01-2021,Time:2:00 PM'),
              contentPadding: const EdgeInsets.only(
                  top: 10, left: 15),
            ),
          ),
          Container(
            color: Colors.tealAccent,
            width: 360,
            height: 80,
            child: ListTile(
              title: Text('Friday'),
              subtitle: Text('Date:29-01-2021,Time:2:00 PM'),
              contentPadding: const EdgeInsets.only(
                  top: 10, left: 15),
            ),
          ),

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

