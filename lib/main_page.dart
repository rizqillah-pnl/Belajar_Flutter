import 'package:flutter/material.dart';
import 'package:helloworld/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('RIZQILLAH / 1957301020'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Go to Second Page'),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            },
          ),
        ),
      ),
    );
  }
}
