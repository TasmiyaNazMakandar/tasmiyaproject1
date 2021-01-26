
import 'package:flutter/material.dart';
import 'package:heath_care/viewlist.dart';
import 'package:url_launcher/url_launcher.dart';



class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Health Care App "),
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(


        color:Colors.white,
        child: ListView(
         padding: const EdgeInsets.all(10),

         children: [
           Center(
             child: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Card(
                       color: Colors.lightBlue,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: FlatButton.icon(

                               icon: Icon(Icons.call),
                               label:Text(
                                 "Call Now", style: TextStyle(fontSize: 25),
                               ),
                               onPressed: () =>_callMe() ,
                             ),
                           ),
                         ],
                       ),
                     ),
                     Card
                       (
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.all(30.0),
                             child:  FlatButton.icon(

                               icon: Icon(Icons.sms),
                               label:Text(
                                   "Send SMS", style: TextStyle(fontSize: 25)),
                               onPressed: () => _textMe(),
                             ),
                           ),
                         ],
                       ),
                     ),
                     Card(
                       color: Colors.lightBlue,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.all(30.0),
                             child: FlatButton.icon(

                               icon: Icon(Icons.email),
                               label:Text(
                                   "Send Email", style: TextStyle(fontSize: 25)),
                               onPressed: () =>
                                   _mail(),
                             ),
                           ),
                         ],
                       ),

                     ),

                   ],
                 )
             ),
           ),

         ],
       ),


      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),

    );
  }
}

_callMe() async {
  const urc='tel:8904934156';
  if( await canLaunch(urc)){
    await launch(urc);
  }  else {
    throw 'Could not launch $urc';
  }
}


_textMe() async {
  // Android
  const uri = 'sms:+39 348 060 888?body=hello%20there';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    // iOS
    const uri = 'sms:0039-222-060-888?body=hello%20there';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}

_mail() async {
  const umail='mailto:tmakandar@skycliffit.com';
  if( await canLaunch(umail)){
    await launch(umail);
  }   else {
    throw 'Could not launch $umail';
  }
}

