import 'package:flutter/material.dart';

class RefundDetailPage extends StatefulWidget {
  @override
  _RefundDetailPageState createState() => _RefundDetailPageState();
}

class _RefundDetailPageState extends State<RefundDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REFUND DETAIL"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Text("REFUND DETAIL"),
          ],
        ),
      ),
    );
  }
}
