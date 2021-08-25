import 'package:flutter/material.dart';
import 'package:task_project/screens/product_info.dart';
import 'package:task_project/screens/view_product.dart';

class AdminDashboard extends StatefulWidget {
  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product View"),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      height: 250,
                      child: TextButton(

                        child: Text(
                          "Upload Product",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 24,),
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),side: BorderSide(color: Colors.black))),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductInfo()),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      height: 250,
                      child: TextButton(
                        child: Text(
                          "View Product",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),side: BorderSide(color: Colors.black))),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewProduct()),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      height: 250,
                      child: TextButton(
                        child: Text(
                          "View Orders",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),side: BorderSide(color: Colors.black))),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => ViewProduct()),
                          // );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      height: 250,
                      child: TextButton(
                        child: Text(
                          "....",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),side: BorderSide(color: Colors.black))),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => ProductInfo()),
                          // );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
