import 'package:flutter/material.dart';

import 'Login_Screen.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health care App',
        style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.grey,

      ),
      body: Padding(

        padding: EdgeInsets.all(10),
        child: ListView(
          children:<Widget> [
            Container(
              alignment: Alignment.center,
              child: Text('Registration page',
              style: TextStyle(
                  color: Colors.blueAccent,

                  fontWeight: FontWeight.w500,
                  fontSize: 30
              ),),
            ),

            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: TextField(  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
                icon: Icon(Icons.people)
              ),
              )
              ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Email-Id',
                  icon: Icon(Icons.email),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    labelText: 'Enter password',
                  icon: Icon(Icons.palette)
                ),
              ),
            ),
            Container(
              child: RaisedButton(
                textColor: Colors.white,
                color:Colors.cyan,
                child: Text('Create Account'),
                onPressed: (){           return showDialog(
                    context: context,
                    builder: (cxt)=> AlertDialog(

                      title:  Row (
                        children: [
                          Text('Aler box'),
                          Image.network('https://img.etimg.com/thumb/msid-76717386,width-1200,height-900,imgsize-104155,overlay-etrise/photo.jpg'  ,width: 50,height: 50,),

                        ],
                      ),
                      //Text('Alert Dialogbox '),

                      content: Text('Suceeful Registration'),

                      actions: <Widget> [
                        FlatButton(
                          child: Text('ok'),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => LoginPage()));
                          },

                        )
                      ],
                    )
                );

                },
              ),
            )

          ],

        )
      ),
    );

  }
}
