

import 'package:flutter/material.dart';
import 'package:heath_care/bim-cal.dart';
import 'package:heath_care/homepage.dart';
import 'package:heath_care/reg.dart';


class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    void setpass() {
      setState(() {


      if(nameController.text=='tas' && passwordController.text=='123')
        {
          return showDialog(
            context: context,
            builder: (cxt)=> AlertDialog(

              title:  Row (
                children: [
                  Text('Aler box'),
                  Image.network('https://image.shutterstock.com/image-vector/green-check-mark-icon-tick-260nw-1540840151.jpg'  ,width: 50,height: 50,),

                ],
              ),
              //Text('Alert Dialogbox '),

              content: Text('Succeful'),

              actions: <Widget> [
                FlatButton(
                  child: Text('ok'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Myhome()));
                  },

                )
              ],
            )
        );



        }
      else {



              return showDialog(
                  context: context,
                  builder: (cxt)=> AlertDialog(

                    title:  Row (
                      children: [
                        Text('Aler box'),
                        Image.network('https://image.shutterstock.com/image-vector/cross-icon-incorrect-sign-prohibited-260nw-1450589105.jpg'  ,width: 50,height: 50,),

                      ],
                    ),
                    //Text('Alert Dialogbox '),

                    content: Text('Faild'),

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

      }
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Health care App '),
          backgroundColor: Colors.grey,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft, end: Alignment(1.19,0.9),colors: [
                const Color(0xffff),
                    const Color(0xffff8bbd)
            ]
            )
          ),

            padding: EdgeInsets.all(10),

            child: ListView(
              children: <Widget>[
                Container(
                  child: Image.network('https://i.pinimg.com/originals/59/3d/3c/593d3c70fcd3eb601fa6cb39c4f79d50.jpg',width: 80,height: 80),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Text(
                      'Login Page',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )
              ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.redAccent,
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: FloatingActionButton(

                      child: Text('Login'),
                      onPressed : setpass,

                    )
                ),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Register',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> Register() ));
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )
        )
    );
  }
}