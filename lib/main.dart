import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Coba-coba'),
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
