import 'package:flutter/material.dart';
import 'package:helloworld/login.dart';
import 'package:helloworld/register.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Register Page",
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        RegisterPage.routeName: (context) => RegisterPage(),
      },
    ),
  );
}
