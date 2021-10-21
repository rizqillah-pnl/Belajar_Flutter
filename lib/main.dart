import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("RIZQILLAH / 1957301020"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.red,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.green,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.amber,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
