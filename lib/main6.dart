import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View & Text Style'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Container(
              height: 60,
              color: Colors.blue,
              child: Center(
                child: Text("List View Flutter"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[400],
              child: Center(
                child: Text("Text Style Flutter 1"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[300],
              child: Center(
                child: Text("Text Style Flutter 2"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[200],
              child: Center(
                child: Text("Text Style Flutter 3"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[100],
              child: Center(
                child: Text("Text Style Flutter 4"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[100],
              child: Center(
                child: Text("Text Style Flutter 5"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[100],
              child: Center(
                child: Text("Text Style Flutter 6"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[400],
              child: Center(
                child: Text("Text Style Flutter 7"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[300],
              child: Center(
                child: Text("Text Style Flutter 8"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[200],
              child: Center(
                child: Text("Text Style Flutter 9"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[100],
              child: Center(
                child: Text("Text Style Flutter 10"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[100],
              child: Center(
                child: Text("Text Style Flutter 11"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[100],
              child: Center(
                child: Text("Text Style Flutter 12"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[100],
              child: Center(
                child: Text("Text Style Flutter 13"),
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue[100],
              child: Center(
                child: Text("Text Style Flutter 14"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
