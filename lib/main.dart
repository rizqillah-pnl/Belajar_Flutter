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
  DateTime date = DateTime.now();

  Future<Null> selectDate(BuildContext context) async {
    final DateTime selected = await showDatePicker(context: context, initialDate: this.date, firstDate: DateTime(2019), lastDate: DateTime(2021));
    if (selected != null && selected != this.date) {
      setState(() {
        this.date = selected;
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
            Text('Tanggal yang dipilih : ${this.date.toString()}'),
            RaisedButton(
              child: Text('Pilih Tanggal'),
              onPressed: () {
                selectedDate(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
