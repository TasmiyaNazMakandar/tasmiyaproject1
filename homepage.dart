import 'package:flutter/material.dart';
import 'package:heath_care/bim-cal.dart';
import 'package:heath_care/booksection.dart';
class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Health Care App'),
        backgroundColor: Colors.grey,),
      drawer: Drawer(
        child: ListView(
          children:<Widget> [
            DrawerHeader(child:
            Image.network('https://content3.jdmagicbox.com/comp/bangalore/w2/080pxx80.xx80.180528211817.q5w2/catalogue/skycliff-it-pvt-ltd-mahalakshmipuram-layout-bangalore-software-companies-8hb7hnuter.jpg?clr=143952'),
              decoration: BoxDecoration(
              color: Colors.cyan
            ),
            ),
            ListTile(
              title: Text('BIM Calculator'),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Demo()));
              },

            ),
            ListTile(
              title: Text('Book Section'),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => booksection()));
              },
            ),
            ListTile (
              title: Text('About Us'),
            ),



          ],
        ),
      ),
        body:Container(
          child: ListView(
            children: <Widget>[
              Container(

                color: Colors.yellowAccent,
                child: ListTile(
                  title: Text('Hello'),

                  ),
                ),

              Container(

                color: Colors.yellowAccent,
                child: ListTile(
                  title: Text('how cam we take your self'),
                ),

              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.pink,
                child: Row(
                  children: [

                    RaisedButton(child: Text('Find doctor')
                      ,onPressed: (){

                      },
                    ),
                    RaisedButton(onPressed: (){},
                    child: Text('Find Hospital'),)
                  ],

                ),
              )
            ],
          ),
        )

    );
}
}
