

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heath_care/Login_Screen.dart';
import 'package:heath_care/bim-cal.dart';
import 'package:heath_care/booksection.dart';
import 'package:heath_care/doctor.page.dart';

import 'about.dart';
import 'sankbar.dart';
class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Health Care App'),
          backgroundColor: Colors.blue,),
      drawer: Drawer(

        child: ListView(
          children:<Widget> [

            DrawerHeader(child:
            Image.network('https://content3.jdmagicbox.com/comp/bangalore/w2/080pxx80.xx80.180528211817.q5w2/catalogue/skycliff-it-pvt-ltd-mahalakshmipuram-layout-bangalore-software-companies-8hb7hnuter.jpg?clr=143952'),
              decoration: BoxDecoration(
              color: Colors.blueAccent
            ),
            ),

            ListTile(
              title: Text('BMI Calculator'),




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
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs()));
              },
            ),
            FlatButton(
          child: Text('Logout', style: TextStyle(color: Colors.black87, fontSize: 16),),
          onPressed: () {Navigator.pushReplacement(
              context, new MaterialPageRoute(builder: (context) => LoginPage()));
          }
      )

          ],
        ),
      ),
      body:Container(
        child: Column(
          children: [
            ListTile(
              title: Text('Hello,',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text('How Can We Take Care Yourself?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Doctordetails()));
                        },
                        child:Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.account_circle,
                                    color: Colors.white,
                                    size: 40,),
                                ),
                                ListTile(
                                  title: Text("Find Doctor",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  subtitle: Text("210 Doctors",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.only(
                                      top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 110,
                            height: 150,
                          ),
                          color: Colors.indigo,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeDoctor()));
                        },
                        child:Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.account_balance,
                                    color: Colors.white,
                                    size: 40,),
                                ),
                                ListTile(
                                  title: Text("Find Hospital",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  subtitle: Text("30 Hospital",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),),
                                  contentPadding: const EdgeInsets.only(
                                      top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 110,
                            height: 150,
                          ),
                          color: Colors.black54,
                        ),
                      )
                    ],

                  ),

                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeDoctor()));
                        },

                        child: Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.add_to_photos,
                                    color: Colors.white,
                                    size: 40,),
                                ),
                                ListTile(
                                  title: Text("Appointment",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  subtitle: Text("50 Available",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),),
                                  contentPadding: const EdgeInsets.only(
                                      top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 110,
                            height: 150,
                          ),
                          color: Colors.black54,
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Sank()));
                        },
                        child:Card(
                          child: Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.calendar_today,
                                    color: Colors.white,
                                    size: 40,),
                                ),
                                ListTile(
                                  title: Text("DrugList",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                  subtitle: Text("22 Services",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),),
                                  contentPadding: const EdgeInsets.only(
                                      top: 20, left: 15),
                                )
                              ],
                            ),
                            width: 110,
                            height: 150,
                          ),
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              padding: const EdgeInsets.all(27),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        color: Color.fromARGB(100, 255, 244, 214),
      ),
    );
}
}
class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}
