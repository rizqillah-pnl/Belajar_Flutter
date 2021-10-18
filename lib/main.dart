import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("RIZQILLAH / 1957301020"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.greenAccent,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.greenAccent,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.greenAccent,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.greenAccent,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.greenAccent,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.greenAccent,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
