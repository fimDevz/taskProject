import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_project/screens/signup.dart';

import 'admin/booking_main.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to Mianwali"
                    "\nCoach Service Booking",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    CupertinoIcons.bus,
                    color: Colors.green,
                    size: 40,
                  )
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 40.0, left: 40.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "User Name",
                      fillColor: Colors.green.shade100),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(right: 40.0, left: 40.0, top: 20.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Password",
                      fillColor: Colors.green.shade100),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, bottom: 12.0, right: 35.0, left: 35.0),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookingMainPage()),
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("If you don't have an account."),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text("Please Sign Up"))
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
