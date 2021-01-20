import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title:
          Text('lvysaur',textAlign:TextAlign.left,style: TextStyle(
            color: Colors.white
          ),),
        centerTitle: true,
      ),
      backgroundColor:Colors.lightGreen,body: Container(
      margin: const EdgeInsets.only(
        top: 16.0,
        left: 18.0
      ),
      child: Card(
        color: Colors.yellow,
          child: Container(
            color: Colors.black26,
            alignment: FractionalOffset.topCenter,
          child: Image.network("https://cnet2.cbsistatic.com/img/FTR6UqAhcvIYrBVifJzYglos41A=/2020/11/30/dd19d589-89aa-4835-be38-c8d82a6306fd/noaacombjelly.jpg",width: 150,height: 150,),
          ),
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0
        )
      ),




      ),


    );
  }
}
