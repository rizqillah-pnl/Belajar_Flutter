import 'package:flutter/material.dart';
import 'package:helloworld/main_page.dart';
import 'package:helloworld/auth_services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text('LOGIN'),
            onPressed: () async {
              await AuthServices.signInAnonymous();
            },
          ),
        ),
      ),
    );
  }
}
