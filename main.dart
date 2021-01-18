import 'package:flutter/material.dart';

import "package:flutter/material.dart";
import 'Login_Screen.dart';
import 'bim-cal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blueGrey), home: LoginPage());
  }
}