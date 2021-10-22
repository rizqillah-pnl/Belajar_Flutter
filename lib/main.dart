import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('RIZQILLAH / 1957301020 - SECOND'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(),
        ),
      ),
    );
  }
}
