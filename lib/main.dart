import 'package:flutter/material.dart';
import 'package:task_project/screens/admin_dashboard.dart';
import 'package:task_project/screens/log_in.dart';
import 'package:task_project/screens/product_info.dart';
import 'package:task_project/screens/signup.dart';
import 'package:task_project/screens/view_product.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyApp(),
      routes: <String,WidgetBuilder>{
          "/admin_dashboard":(BuildContext context)=>AdminDashboard(),
          "/viewProduct":(BuildContext context)=>ViewProduct(),
          "/productInfo":(BuildContext context)=>ProductInfo(),
          "/logIn":(BuildContext context)=>LogIn(),
          "/signUp":(BuildContext context)=>SignUp(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdminDashboard();
  }
}
