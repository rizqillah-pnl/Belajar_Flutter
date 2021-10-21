import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("RIZQILLAH / 1957301020 - Image"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                margin: EdgeInsets.only(bottom: 20, top: 20),
                child: Image(
                  image: NetworkImage(
                    "https://avatars.githubusercontent.com/u/71523218?v=4",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
