import 'package:flutter/material.dart';
import 'package:task_project/screens/log_in.dart';
import 'package:task_project/screens/signup.dart';

void main(){
  runApp(
      MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: MyApp()),
  );
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LogIn();
  }
}
