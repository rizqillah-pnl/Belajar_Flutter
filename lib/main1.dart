import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World',
      home: Scaffold(
        appBar: AppBar(
          title: Text('RIZQILLAH / 1957301020'),
        ),
        body: Center(
          child: Container(
            child: Text(
              "Saya sedang belajar pemrograman flutter melalui website flutlab.io",
              overflow: TextOverflow.ellipsis,
              maxLines: 10,
              style: TextStyle(fontFamily: 'Consolas', fontStyle: FontStyle.italic, fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            color: Colors.cyan,
            height: 100,
          ),
        ),
      ),
    );
  }
}
