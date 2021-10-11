import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _jumlahBuku = 1;

  void _incrementCounter() {
    setState(() {
      _jumlahBuku++;
    });
  }

  void reset() {
    setState(() {
      _jumlahBuku = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coba-coba'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Angka : $_jumlahBuku',
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              child: Text('Reset'),
              onPressed: reset,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Tambah',
        child: Icon(Icons.add),
      ),
    );
  }
}
