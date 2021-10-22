import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Card(
                child: Row(
                  children: <Widget>[
                    Container(margin: EdgeInsets.all(5), child: Icon(Icons.account_box)),
                    Text("Account Box"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
