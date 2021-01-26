

import 'package:flutter/material.dart';


void main() => runApp(MyHomePage());

 class MyHomePage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     print('1st state');
 return _MyHomePageState();
  }


      
 }
 
 class _MyHomePageState extends State<MyHomePage> {


   @override
   void initState(){
     print('3rd state');
     super.initState();
   }
   @override
   void didchangedependencies(){
     print('4th state');
     super.didChangeDependencies();
   }



   @override
  void setState(fn) {
    // TODO: implement
     print('6th state');
    super.setState(fn);
  }
      @override
      void deactive(){
        print('7th state');
        super.deactivate();
      }
          @override
          void dispose(){
              print('8th state');
              super.dispose();

          }
   @override
   void didUpdateWidget(covariant MyHomePage oldWidget) {
     print('5th state');
     super.didUpdateWidget(oldWidget);
   }
   @override
   Widget build(BuildContext context) {

        print(("2nd state"));
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('Life Cycle Demo'),
         ),
         body: Column(
           children: [
             RaisedButton(onPressed: (){
               deactive();
               didchangedependencies();
               setState(() { });
               dispose();
               },child: Text('Click'),),
             Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6pqeL0PmncZu6B9ob5nPkFU_jmepJGA1DnQ&usqp=CAU',width: 250,height: 68,),
             Text('Welcome'),
             Text('hi')
           ],
         ),
       ),
     );
   }
 }
 
