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
  final List<String> bahasa = [
    'Java',
    'Kotlin',
    'Dart'
  ];
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  List<int> list = [];

  void onChanged1(bool value) {
    setState(() {
      this.selected1 = value;
    });
    if (value)
      list.add(0);
    else
      list.remove(0);
    print(list);
  }

  void onChanged2(bool value) {
    setState(() {
      this.selected2 = value;
    });
    if (value)
      list.add(1);
    else
      list.remove(1);
    print(list);
  }

  void onChanged3(bool value) {
    setState(() {
      this.selected3 = value;
    });
    if (value)
      list.add(2);
    else
      list.remove(2);
    print(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      debugShowCheckedModeBanner: false,
      appBar: AppBar(
        title: Text('Demo Checkbox'),
      ),
      body: Container(
        padding: EdgeInsets.all(10, 0),
        child: Column(
          children: <Widget>[
            Text('Bahasa yang disukai : '),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.selected1,
                  onChange: (bool value) {
                    onChange1(value);
                  },
                ),
                Container(
                  width: 8.0,
                ),
                Text(this.bahasa[0]),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.selected2,
                  onChange: (bool value) {
                    onChange2(value);
                  },
                ),
                Container(
                  width: 8.0,
                ),
                Text(this.bahasa[1]),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.selected3,
                  onChange: (bool value) {
                    onChange3(value);
                  },
                ),
                Container(
                  width: 8.0,
                ),
                Text(this.bahasa[2]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
