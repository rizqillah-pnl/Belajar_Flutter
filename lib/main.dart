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
          children: [
            Container(
              color: Colors.greenAccent,
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.orangeAccent,
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
