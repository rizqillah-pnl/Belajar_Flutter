import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VALIDASI DATA'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  validator: validatorNama,
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  validator: validatorNomorInduk,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'NIM',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  validator: validatorEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String validatorNama(String value) {
  if (value.length < 3)
    return 'Harus lebih 2 huruf';
  else
    return null;
}

String validatorNomorInduk(String value) {
  if (value.length >= 10 && value.length <= 20)
    return null;
  else
    return 'Nomor Induk harus diatas 10 digit dan dibawah 20 digit';
}

String validatorEmail(String value) {
  Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Email harus berisi @ dan titik(.)';
  else
    return null;
}
