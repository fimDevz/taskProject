import 'package:flutter/material.dart';
import 'package:task_project/screens/log_in.dart';
import 'package:task_project/screens/signup.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyApp(),
      routes: <String, WidgetBuilder>{
        "/logIn": (BuildContext context) => LogIn(),
        "/signUp": (BuildContext context) => SignUp(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LogIn();
  }
}
