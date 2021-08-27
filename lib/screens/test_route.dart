import 'package:flutter/material.dart';

class TestRoute extends StatefulWidget {
  @override
  _TestRouteState createState() => _TestRouteState();
}

class _TestRouteState extends State<TestRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(onPressed: () {}, child: Text("Admin")),
            TextButton(onPressed: () {}, child: Text("Log in")),
            TextButton(onPressed: () {}, child: Text("Product Info")),
            TextButton(onPressed: () {}, child: Text("SIgn up")),
            TextButton(onPressed: () {}, child: Text("View Product")),
          ],
        ),
      ),
    );
  }
}
