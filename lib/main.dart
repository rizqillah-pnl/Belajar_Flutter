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
  TimeOfDay time = TimeOfDay.now();

  Future<Null> selectDate(BuildContext context) async {
    final TimeOfDay selected = await showTimePicker(context: context, initialTime: this.time);
    if (selected != null && selected != this.time) {
      setState(() {
        this.time = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo ShowDatePicker()'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text('Waktu yang dipilih : ${this.time.toString()}'),
            RaisedButton(
              child: Text('Pilih Waktu'),
              onPressed: () {
                selectDate(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
