import 'package:flutter/material.dart';

class Doctordetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors List')
        ,
      ),
      body: Container(
        padding: EdgeInsets.all(50),


        child: Column(
          children: [
            Text('Choose your Doctor',style: TextStyle(
              fontSize: 30,
              color: Colors.orange,
            ),
            ),
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUkLHx2IGkRVAsg1pnAX-HPixX14bOOK60og&usqp=CAU')
          ],
        ),


      ),

    );
  }
}
