import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("RIZQILLAH / 1957301020"),
        ),
        body: Center(
          child: Text(
            "Belajar Text Style.",
            style: TextStyle(fontFamily: "CrashLandingBB", fontSize: 45),
          ),
        ),
      ),
    );
  }
}
