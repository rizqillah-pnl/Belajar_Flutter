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
  int selected = -1;

  void onChanged(int value) {
    setState(() {
      this.selected = value;
    });
    print('Pilihan : ${this.selected}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Radio'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text('Jenis Kelamin: '),
            Row(
              children: <Widget>[
                Radio(
                  value: 88,
                  groupValue: this.selected,
                  onChanged: (value) {
                    onChanged(value);
                  },
                ),
                Container(
                  width: 8.0,
                ),
                Text('Pria'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 99,
                  groupValue: this.selected,
                  onChanged: (value) {
                    onChanged(value);
                  },
                ),
                Container(
                  width: 8.0,
                ),
                Text('Wanita'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
