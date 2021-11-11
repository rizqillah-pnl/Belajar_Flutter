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
  bool selected = false;

  void onTextFieldChanged(String value) {
    setState(() {
      print(value);
    });
  }

  void onCheckboxChanged(bool value) {
    setState(() {
      this.selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Checkbox'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              enabled: !this.selected,
              onChanged: (value) {
                onTextFieldChanged(value);
              },
              decoration: InputDecoration(
                hintText: 'Ketik teks di sini',
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.selected,
                  onChanged: (value) {
                    onCheckboxChanged(value);
                  },
                ),
                Text('Disable Input Box'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
