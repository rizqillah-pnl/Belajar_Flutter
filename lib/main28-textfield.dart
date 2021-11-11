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
  String name = '';
  String text = '';

  void onPressed() {
    setState(() {
      if (this.name.trim().length == 0) return;
      this.text = 'Hai ' + this.name + ', Apa Kabar?';
    });
  }

  void onChanged(String value) {
    setState(() {
      this.name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo TextField'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) {
              onChanged(value);
            },
            decoration: InputDecoration(
              hintText: 'Ketik Nama Lengkap',
              hintStyle: TextStyle(
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          ElevatedButton(
            child: Text('Klik'),
            onPressed: () {
              onPressed();
            },
          ),
          Container(
            height: 15.0,
          ),
          Text(this.text),
        ],
      ),
    );
  }
}
