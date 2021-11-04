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
                      color: Colors.black,
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
  TextEditingController controller = TextEditingController();

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
              TextField(
                decoration: InputDecoration(
                  // icon: Icon(Icons.adb),
                  // fillColor: Colors.lightBlue[50],
                  // filled: true,
                  suffix: Container(
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  prefixIcon: Icon(Icons.person),
                  // prefixText: 'Username : ',
                  // prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                  labelText: 'Nama Lengkap',
                  // labelStyle: TextStyle(),
                  hintText: "Nama Lengkapnya loh...",
                  hintStyle: TextStyle(
                    fontSize: 12,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                maxLength: 10,
                obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
