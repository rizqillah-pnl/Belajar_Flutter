import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

// class Home extends StatefulWidget {
//   @override
//   HomeState createState() => HomeState();
// }

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Radio'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'assets/images/facebook.png',
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Divider(),
          Image.asset(
            'assets/images/twitter.png',
            height: 250.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
