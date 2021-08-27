import 'package:flutter/material.dart';

class UserDetailPage extends StatefulWidget {
  @override
  _UserDetailPageState createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USER DETAIL"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Text("USER DETAIL"),
          ],
        ),
      ),
    );
  }
}
