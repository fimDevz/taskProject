import 'package:flutter/material.dart';

class ManageCancellationPage extends StatefulWidget {
  @override
  _ManageCancellationPageState createState() => _ManageCancellationPageState();
}

class _ManageCancellationPageState extends State<ManageCancellationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MANAGE CANCELLATION"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Text("MANAGE CANCELLATION OF SEAT"),
          ],
        ),
      ),
    );
  }
}
