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

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String fileName = 'assets/images/logo.png';

  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          this.fileName = 'assets/images/facebook.png';
          break;
        case 1:
          this.fileName = 'assets/images/twitter.png';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Icon'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.local_pizza),
            onPressed: () {
              selectImage(0);
            },
          ),
          IconButton(
            icon: Icon(Icons.cake),
            onPressed: () {
              selectImage(1);
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            this.fileName,
            height: 250.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
