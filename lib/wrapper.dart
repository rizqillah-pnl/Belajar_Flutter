import 'package:flutter/material.dart';
import 'package:helloworld/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'main_page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User firebaseUser = Provider.of<User>(context);

    return (firebaseUser == null) ? LoginPage() : MainPage(firebaseUser);
  }
}
