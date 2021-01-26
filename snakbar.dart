import 'package:flutter/material.dart';
import 'package:heath_care/viewlist.dart';

class Sank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue,

        ),
        body: SnackBarPage(),
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
            content: Text('A SnackBar'),
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


