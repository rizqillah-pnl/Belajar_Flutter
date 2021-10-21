import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("RIZQILLAH / 1957301020"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.pink,
                      foregroundDecoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://i.ytimg.com/vi/5cjWMAAbJPI/hqdefault.jpg",
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.pink[100],
                      foregroundDecoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://i.ytimg.com/vi/QZAc1hT1vdg/hqdefault.jpg",
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.pink[300],
                      foregroundDecoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amber[200],
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(image: AssetImage('assets/images/logo.png'), fit: BoxFit.fill),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blueGrey,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Flexible(
                      child: Container(
                        color: Colors.red[300],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
