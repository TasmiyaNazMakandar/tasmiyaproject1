import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body:
      Container(
        color: Colors.yellow,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8VnZpGL84i2Ehm--JV8Qzek8B7PXQbYj9-Q&usqp=CAU'),
            ),
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter height',
                icon: Icon(Icons.height_rounded),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter weight',
                icon: Icon(Icons.line_weight_rounded),
              ),
            ),
            SizedBox(height: 15),
            RaisedButton(
              color: Colors.lightGreen,
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: calculateBMI,
            ),
            SizedBox(height: 15),
            Text(
              _result == null ? "Enter value" : "${_result.toStringAsFixed(2)}",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
              ),
            ),

          ],
        ),

      ),
    );
  }

  void calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;
    setState(() {});
  }
}