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
  double sliderValue = 0.0;

  void onChanged(double value) {
    setState(() {
      this.sliderValue = value;
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
          children: <Widget>[
            Text('Nilai Aktif : ${sliderValue.round()}'),
            Slider(
              min: 0.0,
              max: 100.0,
              value: this.sliderValue,
              onChanged: (value) {
                onChanged(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
