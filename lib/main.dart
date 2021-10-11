import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angka = 0;

  void pushButton() {
    setState(() {
      angka += 1;
    });
  }

  void reset() {
    setState(() {
      angka = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("RIZQILLAH / 1957301020")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(angka.toString(), style: TextStyle(fontSize: 10 + angka.toDouble())),
              RaisedButton(
                child: Text("Tambah Angka"),
                onPressed: pushButton,
              ),
              RaisedButton(
                child: Text("Reset"),
                onPressed: reset,
              )
            ],
          ),
        ),
      ),
    );
  }
}
