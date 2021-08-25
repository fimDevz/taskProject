import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          title: Text(
            "Profile",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
          actions: [
            FlatButton(
              textColor: Colors.green.shade900,
              onPressed: () {},
              child: Text(
                "EDIT",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 25.0, left: 40, right: 40),
            child: Form(
                child: Column(
              children: [
                Text(
                  "(Name)",
                  style:
                      TextStyle(fontSize: 20.0, color: Colors.green.shade900),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your Name",
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.black),
                      labelStyle: TextStyle(
                        color: Colors.green.shade900,
                      )),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "(Email)",
                  style:
                      TextStyle(fontSize: 20.0, color: Colors.green.shade900),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your email",
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.black),
                      labelStyle: TextStyle(
                        color: Colors.green.shade900,
                      )),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "(Mobile Number)",
                  style:
                      TextStyle(fontSize: 20.0, color: Colors.green.shade900),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your Mobile Number",
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.black),
                      labelStyle: TextStyle(
                        color: Colors.green.shade900,
                      )),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "(Complete Address)",
                  style:
                      TextStyle(fontSize: 20.0, color: Colors.green.shade900),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "House # (for delivery",
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.black),
                      labelStyle: TextStyle(
                        color: Colors.green.shade900,
                      )),
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            )),
          ),
        ));
  }
}
