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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                margin: EdgeInsets.only(bottom: 20, top: 20),
                child: Image(
                  image: AssetImage(
                    "assets/images/logo.png",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    "Selamat Datang!",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    child: Text('Daftar'),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text('Masuk'),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return Login();
                      }));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        labelText: "Username : ",
                        labelStyle: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.blue,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        labelText: "Password : ",
                        labelStyle: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.blue,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        labelText: "Token : ",
                        labelStyle: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    child: Text('Back'),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return MainPage();
                      }));
                    },
                  ),
                  ElevatedButton(
                    child: Text('Login'),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return MataKuliah();
                      }));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MataKuliah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    "Mata Kuliah",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              buildCard(Icons.people, 'Pemrograman Mobile'),
              buildCard(Icons.people, 'Pemrograman Lanjut'),
              buildCard(Icons.people, 'Bahasa Indonesia'),
              buildCard(Icons.people, 'Bahasa Inggris'),
              buildCard(Icons.people, 'Pemrograman Web'),
              buildCard(Icons.people, 'Basis Data'),
              buildCard(Icons.people, 'Rancangan Analisa dan Algoritma'),
              buildCard(Icons.people, 'Pengolahan Citra Digital'),
              buildCard(Icons.people, 'Pemrograman Mobile'),
              buildCard(Icons.people, 'Pemrograman Lanjut'),
              buildCard(Icons.people, 'Bahasa Indonesia'),
              buildCard(Icons.people, 'Bahasa Inggris'),
              buildCard(Icons.people, 'Pemrograman Web'),
              buildCard(Icons.people, 'Basis Data'),
              buildCard(Icons.people, 'Rancangan Analisa dan Algoritma'),
              buildCard(Icons.people, 'Pengolahan Citra Digital'),
              ElevatedButton(
                child: Text('Logout'),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Card buildCard(IconData iconData, String text) {
  return Card(
    elevation: 5,
    child: Row(
      children: <Widget>[
        Container(margin: EdgeInsets.all(5), child: Icon(iconData, color: Colors.blue)),
        Text(text),
      ],
    ),
  );
}
