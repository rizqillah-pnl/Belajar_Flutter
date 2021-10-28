import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) => MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) => MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              right: -getSmallDiameter(context) / 3,
              top: -getSmallDiameter(context) / 3,
              child: Container(
                width: getSmallDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Color(0xFFB226B2),
                      Color(0xFFFF6DA7)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              ),
            ),
            Positioned(
              left: -getSmallDiameter(context) / 4,
              top: -getSmallDiameter(context) / 4,
              child: Container(
                child: Center(
                  child: Text(
                    'RIZQILLAH',
                    style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Color(0xFFB226B2),
                      Color(0xFFFF4891)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
