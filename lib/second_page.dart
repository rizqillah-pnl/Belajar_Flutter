import 'package:flutter/material.dart';
import 'package:helloworld/main_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('RIZQILLAH / 1957301020 - SECOND'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Back'),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
          ),
        ),
      ),
    );
  }
}
